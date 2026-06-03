// Approach: Counting
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var result = 0

        for i in startTime.indices {
            if startTime[i] <= queryTime, endTime[i] >= queryTime {
                result += 1
            }
        }

        return result
    }
}