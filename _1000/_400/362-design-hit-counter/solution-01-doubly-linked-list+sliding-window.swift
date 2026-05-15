class DoubleListNode {
    var key: Int
    var val: Int
    var prev: DoubleListNode?
    var next: DoubleListNode?

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

// Я использую двусвязный список для хранения таймстемпов в отсортированном порядке (от новых к старым). 
// Каждый узел хранит timestamp и количество хитов в эту секунду.
// При вызове hit() и getHits() я лениво удаляю устаревшие записи с конца списка (Lazy Cleanup).
// Это позволяет поддерживать только последние 300 секунд и работать за O(1) амортизированное время
class HitCounter {
    private let maxTime = 300

    private let head: DoubleListNode
    private let tail: DoubleListNode
    private var count = 0
    private var hits = 0

    init() {
        head = DoubleListNode()
        tail = DoubleListNode()

        head.next = tail
        tail.prev = head
    }
    
    func hit(_ timestamp: Int) {
        hits += 1

        if let next = head.next, 
           next.key == timestamp 
        {
            next.val += 1
            return
        }

        let node = DoubleListNode(key: timestamp, val: 1)
        let next = head.next

        node.next = next
        node.prev = head

        next?.prev = node
        head.next = node

        count += 1

        // на тот случай если много вызовов hit() и очень мало getHits()
        if count > maxTime {
            removeNodes(currTimestamp: timestamp)
        }
    }
    
    func getHits(_ timestamp: Int) -> Int {
        removeNodes(currTimestamp: timestamp)

        return hits
    }

    private func removeNodes(currTimestamp: Int) {
        let removedTimestamp = max(currTimestamp - maxTime, 0)

        while let prev = tail.prev,
              prev.key != 0,
              prev.key <= removedTimestamp 
        {
            hits -= prev.val
            count -= 1
            prev.removeFromList()
        }
    }
}

/**
 * Your HitCounter object will be instantiated and called as such:
 * let obj = HitCounter()
 * obj.hit(timestamp)
 * let ret_2: Int = obj.getHits(timestamp)
 */