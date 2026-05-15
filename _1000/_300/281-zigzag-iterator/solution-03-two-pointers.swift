final class ZigzagIterator {
    private let vectors: [[Int]]
    private var indexes = [0, 0]
    private var turn = 0

    init(_ v1: [Int], _ v2: [Int]) {
        vectors = [v1, v2]
    }

    func next() -> Int {
        for _ in 0..<2 {
            let current = turn
            turn = (turn + 1) % 2

            if indexes[current] < vectors[current].count {
                let value = vectors[current][indexes[current]]
                indexes[current] += 1
                return value
            }
        }

        fatalError("No elements")
    }

    func hasNext() -> Bool {
        indexes[0] < vectors[0].count ||
        indexes[1] < vectors[1].count
    }
}