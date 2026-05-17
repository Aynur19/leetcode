// Approach: Prefix Sum, Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var dict = [0: 1]
        var result = 0
        var sum = 0

        for i in nums.indices {
            sum += nums[i]
            
            if let count = dict[sum - k] {
                result += count
            }

            dict[sum, default: 0] += 1
        }

        return result
    }
}