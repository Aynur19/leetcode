// Approach: Sorting
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        guard intervals.count > 1 else {
            return true
        }

        let intervals = intervals.sorted { $0[0] < $1[0] }
        for i in 1..<intervals.count {
            if intervals[i - 1][1] > intervals[i][0] {
                return false
            }
        }

        return true
    }
}