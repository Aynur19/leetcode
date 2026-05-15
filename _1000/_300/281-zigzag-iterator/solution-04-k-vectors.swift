final class ZigzagIterator {
    private var queue: [(vector: Int, index: Int)] = []
    private let vectors: [[Int]]

    init(_ vectors: [[Int]]) {
        self.vectors = vectors

        for i in vectors.indices {
            if !vectors[i].isEmpty {
                queue.append((i, 0))
            }
        }
    }

    func next() -> Int {
        let (vector, index) = queue.removeFirst()

        let value = vectors[vector][index]

        if index + 1 < vectors[vector].count {
            queue.append((vector, index + 1))
        }

        return value
    }

    func hasNext() -> Bool {
        !queue.isEmpty
    }
}