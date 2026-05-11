// Approach: Prefix Sum Optimized
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var minPrefix = 0
        var prefix = 0
        var result = nums[0]

        for num in nums {
            prefix += num                                
            result = max(result, prefix - minPrefix)
            minPrefix = min(minPrefix, prefix)            
        }

        return result
    }
}