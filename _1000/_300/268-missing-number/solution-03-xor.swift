// Approach: XOR
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var result = nums.count

        for i in 0..<nums.count {
            result ^= i
            result ^= nums[i]
        }

        return result
    }
}