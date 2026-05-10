// Approach: Kadane's Algorithm
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var current = nums[0]
        var best = nums[0]

        for i in 1..<nums.count {
            current = max(nums[i], current + nums[i])
            best = max(best, current)
        }

        return best
    }
}