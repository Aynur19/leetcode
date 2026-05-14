// Approach: Prefix Sum
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array(repeating: 1, count: nums.count)

        var tmp = 1
        for i in 1..<nums.count {
            tmp = tmp * nums[i - 1]
            result[i] = tmp
        }       

        tmp = 1
        for i in stride(from: nums.count - 2, to: -1, by: -1) {
            tmp = tmp * nums[i + 1]
            result[i] = result[i] * tmp
        }

        return result
    }
}