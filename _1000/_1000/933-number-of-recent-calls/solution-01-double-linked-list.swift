class LinkedList2 {
    var key: Int
    var val: Int
    var prev: LinkedList2?
    var next: LinkedList2?

    init(key: Int = 0, val: Int = 0) {
        self.key = key
        self.val = val
    }

    func removeFromList() {
        prev?.next = next
        next?.prev = prev

        prev = nil
        next = nil
    }
}

// Approach: Double Linked List
// Time complexity: O(1)
// Space complexity: O(n)
class RecentCounter {
    private let head = LinkedList2()
    private let tail = LinkedList2()
    private var count = 0
    private let maxTimeDiff = 3000 

    init() {
        head.next = tail
        tail.prev = head    
    }
    
    func ping(_ t: Int) -> Int {
        let node = LinkedList2(key: t, val: 1)
        node.prev = head
        node.next = head.next

        head.next = node
        node.next?.prev = node

        count += 1

        while let last = tail.prev,
              last.key < t - maxTimeDiff
        {
            last.removeFromList()
            count -= 1
        }

        return count
    }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * let obj = RecentCounter()
 * let ret_1: Int = obj.ping(t)
 */