// Approach: Sum
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let n = nums.count
        let expected = n * (n + 1) / 2
        let actual = nums.reduce(0, +)

        return expected - actual
    }
}