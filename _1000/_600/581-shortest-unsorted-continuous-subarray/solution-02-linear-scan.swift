// Approach: Linear Scan
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        let n = nums.count

        var left = -1
        var right = -1

        var maxSeen = Int.min
        var minSeen = Int.max

        for i in 0..<n {
            maxSeen = max(maxSeen, nums[i])

            if nums[i] < maxSeen {
                right = i
            }
        }

        for i in stride(from: n - 1, through: 0, by: -1) {
            minSeen = min(minSeen, nums[i])

            if nums[i] > minSeen {
                left = i
            }
        }

        return right == -1 ? 0 : right - left + 1
    }
}