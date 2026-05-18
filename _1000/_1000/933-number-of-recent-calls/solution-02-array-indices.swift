// Approach: Array + Indices
// Time complexity: O(1)
// Space complexity: O(n)
class RecentCounter {
    private var requests = [Int]()
    private var left = 0
    
    func ping(_ t: Int) -> Int {
        requests.append(t)
        
        while requests[left] < t - 3000 {
            left += 1
        }
        
        return requests.count - left
    }
}