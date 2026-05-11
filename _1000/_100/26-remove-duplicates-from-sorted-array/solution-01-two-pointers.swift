// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var index = 0

        for idx in nums.indices {
            if index == 0 || nums[idx] != nums[index - 1] {
                nums[index] = nums[idx]
                index += 1
            }
        }

        return index
    }
}