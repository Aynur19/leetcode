// Approach: Brute Force
// Time complexity: O(n^3) -> TLE (200)
// Space complexity: O(n^1)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        let n = nums.count
        var result = nums[0]

        for left in 0..<n {
            for right in left..<n {
                var sum = 0

                for i in left...right {
                    sum += nums[i]
                }

                result = max(result, sum)
            }
        }

        return result
    }
}
