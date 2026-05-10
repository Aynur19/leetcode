// Approach: Brute Force
// Time complexity: O(n^2) -> TLE (205)
// Space complexity: O(n^1)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let n = nums.count
        var result = nums[0]

        for left in 0..<n {
            var sum = 0

            for right in left..<n {
                sum += nums[right]
                result = max(result, sum)
            }
        }

        return result
    }
}
