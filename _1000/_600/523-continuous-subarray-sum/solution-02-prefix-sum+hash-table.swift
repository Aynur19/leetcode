// Approach: Prefix Sum, Hash Table
// Time complexity: O(n)
// Space complexity: O(k)
class Solution {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        var sum = 0
        var dict = [Int: Int]() 

        for i in nums.indices {
            sum = (sum + nums[i]) % k

            if sum == 0, i > 0 {
                return true
            }

            if let index = dict[sum] {
                if  i - index >= 2 {
                    return true
                }
            } else {
                dict[sum] = i
            }
        }

        return false
    }
}