// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zero = 0

        while zero < nums.count && nums[zero] != 0 {
            zero += 1
        }

        guard zero < nums.count else {
            return
        }

        for current in (zero + 1)..<nums.count {
            if nums[current] != 0 {
                nums.swapAt(zero, current)
                zero += 1
            }
        }
    }
}