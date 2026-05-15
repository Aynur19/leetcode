final class ZigzagIterator {
    private var queue: [(value: Int, iterator: IndexingIterator<[Int]>)] = []

    init(_ v1: [Int], _ v2: [Int]) {
        addIterator(v1)
        addIterator(v2)
    }

    private func addIterator(_ array: [Int]) {
        var iterator = array.makeIterator()

        if let first = iterator.next() {
            queue.append((first, iterator))
        }
    }

    func next() -> Int {
        let (value, iterator) = queue.removeFirst()

        var iterator = iterator

        if let nextValue = iterator.next() {
            queue.append((nextValue, iterator))
        }

        return value
    }

    func hasNext() -> Bool {
        !queue.isEmpty
    }
}