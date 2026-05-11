class DoubleListNode {
    var key: Int
    var val: Int
    var prev: DoubleListNode?
    var next: DoubleListNode?

    init(key: Int = 0, val: Int = 0) {
        self.key = key
        self.val = val
    }
}


// Approach: Hash Table, Double Linked List
// Time complexity: get() -> O(n); put -> O(n)
// Space complexity: O(capacity)
class LRUCache {
    private let capacity: Int
    private var cache = [Int: DoubleListNode]()

    // Dummy nodes
    private let head = DoubleListNode()
    private let tail = DoubleListNode()

    init(_ capacity: Int) {
        self.capacity = capacity

        head.next = tail
        tail.prev = head
    }

    // O(1)
    func get(_ key: Int) -> Int {
        guard let node = cache[key] else {
            return -1
        }

        moveToHead(node)

        return node.val
    }

    // O(1)
    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.val = value
            moveToHead(node)
            return
        }

        let node = DoubleListNode(key: key, val: value)

        cache[key] = node
        insertAfterHead(node)

        if cache.count > capacity {
            let lru = removeTail()

            cache[lru.key] = nil
        }
    }

    // MARK: - Doubly Linked List Helpers

    private func moveToHead(_ node: DoubleListNode) {
        remove(node)
        insertAfterHead(node)
    }

    private func insertAfterHead(_ node: DoubleListNode) {
        node.prev = head
        node.next = head.next

        head.next?.prev = node
        head.next = node
    }

    private func remove(_ node: DoubleListNode) {
        node.prev?.next = node.next
        node.next?.prev = node.prev

        node.prev = nil
        node.next = nil
    }

    private func removeTail() -> DoubleListNode {
        let node = tail.prev!

        remove(node)

        return node
    }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * let obj = LRUCache(capacity)
 * let ret_1: Int = obj.get(key)
 * obj.put(key, value)
 */