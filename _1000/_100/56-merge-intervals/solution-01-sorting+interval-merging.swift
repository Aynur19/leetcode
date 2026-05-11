// Approach: Sorting + Interval Merging
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }
        var result = [[Int]]()
        var interval = intervals[0]
        
        for i in 1..<intervals.count {
            let curr = intervals[i]
            
            if curr[0] <= interval[1] {
                interval[1] = max(interval[1], curr[1])
            } else {
                result.append(interval)
                interval = curr
            }
        }

        result.append(interval)
        return result
    }
}