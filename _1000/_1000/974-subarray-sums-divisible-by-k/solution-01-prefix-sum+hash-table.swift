// Approach: Prefix Sum, Hash Table
// Time complexity: O(n)
// Space complexity: O(k)
class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var dict = [0: 1]
        var result = 0
        var sum = 0

        for i in nums.indices {
            sum = sum + nums[i]
            let key = ((sum % k) + k) % k

            if let count = dict[key] {
                result += count
                dict[key] = count + 1
            } else {
                dict[key] = 1
            }
        }
        
        return result
    }
}
