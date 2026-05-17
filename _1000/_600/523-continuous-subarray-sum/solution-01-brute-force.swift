// Approach: Brute Force
// Time complexity: O(n^2)
// Space complexity: O(n)
class Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        var sums = nums
        
        for i in 1..<nums.count {
            for j in 0..<(nums.count - i) {
                sums[j] = (sums[j] + nums[j + i]) % k

                if sums[j] == 0 {
                    return true
                }
            }
        }

        return false
    }
}