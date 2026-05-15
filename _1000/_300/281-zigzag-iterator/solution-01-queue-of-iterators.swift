// Approach: Queue of Iterators
// Time complexity: O(n)
// Space complexity: O(n)
final class ZigzagIterator {
    private var queue: [IndexingIterator<[Int]>] = []

    init(_ v1: [Int], _ v2: [Int]) {
        let it1 = v1.makeIterator()
        let it2 = v2.makeIterator()

        queue.append(it1)
        queue.append(it2)
    }

    func next() -> Int {
        var iterator = queue.removeFirst()

        let value = iterator.next()!

        if iterator.next() != nil {
            var newIterator = iterator
            _ = newIterator.next()
            queue.append(newIterator)
        }

        return value
    }

    func hasNext() -> Bool {
        !queue.isEmpty
    }
}