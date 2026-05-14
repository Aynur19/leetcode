// Approach: Sorting, Greedy
// Time complexity: O(n^2)
// Space complexity: O(n)
class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        guard intervals.count > 1 else {
            return intervals.count
        }

        let intervals = intervals.sorted { $0[0] < $1[0] }
        var rooms = [[Int]]()

        for interval in intervals {
            var isSolved = false

            for i in rooms.indices {
                if rooms[i][1] <= interval[0] {
                    rooms[i] = interval
                    isSolved = true
                    break
                }
            }

            if !isSolved {
                rooms.append(interval)
            }
        }

        return rooms.count
    }
}