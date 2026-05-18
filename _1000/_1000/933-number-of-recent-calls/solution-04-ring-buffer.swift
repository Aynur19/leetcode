// Approach: Ring Buffer
// Time complexity: O(1)
// Space complexity: O(n)
class RecentCounter {
    private var buffer = [Int](repeating: 0, count: 10000)
    private var start = 0
    private var end = 0
    
    func ping(_ t: Int) -> Int {
        buffer[end] = t
        end = (end + 1) % buffer.count
        
        while buffer[start] < t - 3000 {
            start = (start + 1) % buffer.count
        }
        
        if end >= start {
            return end - start
        } else {
            return buffer.count - start + end
        }
    }
}