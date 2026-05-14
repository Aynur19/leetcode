// Approach: Sorting, Two Pointers
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        let n = intervals.count

        guard n > 0 else {
            return 0
        }

        let starts = intervals.map { $0[0] }.sorted()
        let ends = intervals.map { $0[1] }.sorted()

        var rooms = 0
        var endPointer = 0

        for start in starts {
            if start < ends[endPointer] {
                rooms += 1
            } else {
                endPointer += 1
            }
        }

        return rooms
    }
}