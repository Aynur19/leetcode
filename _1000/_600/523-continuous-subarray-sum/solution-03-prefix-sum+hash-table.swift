// Approach: Prefix Sum, Hash Table
// Time complexity: O(n)
// Space complexity: O(k)
class Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        var remainderIndex = [0: -1]
        var prefix = 0

        for i in nums.indices {
            prefix = (prefix + nums[i]) % k

            if let prev = remainderIndex[prefix] {
                if i - prev >= 2 {
                    return true
                }
            } else {
                remainderIndex[prefix] = i
            }
        }

        return false
    }
}