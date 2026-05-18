import Collections

// Approach: Deque
// Time complexity: O(1)
// Space complexity: O(n)
class RecentCounter {
    private var deque = Deque<Int>()
    
    func ping(_ t: Int) -> Int {
        deque.append(t)
        
        while let first = deque.first, first < t - 3000 {
            deque.popFirst()  // O(1) для Deque
        }
        
        return deque.count
    }
}