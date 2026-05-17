// Approach: Two Pointers, Sliding Window
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var isUsedFlip = false
        var (left, right) = (0, 0)
        var result = 0

        for num in nums {
            if num == 0 {
                if !isUsedFlip {
                    isUsedFlip = true
                } else {
                    while nums[left] != 0 {
                        left += 1
                    }     

                    left += 1
                }
            }

            result = max(result, right + 1 - left)
            right += 1
        }

        return result
    }
}