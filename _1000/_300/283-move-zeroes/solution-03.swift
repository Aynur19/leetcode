// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var insert = 0

        for i in nums.indices {
            if nums[i] != 0 {
                nums.swapAt(insert, i)
                insert += 1
            }
        }
    }
}