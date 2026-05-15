// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else { 
            return
        }

        var (left, right) = (-1, -1)
        for idx in nums.indices {
            if nums[idx] == 0 {
                left = idx
                right = left + 1
                break
            }
        }

        guard left > -1 else { 
            return 
        }

        while right < nums.count {
            if nums[right] != 0 {
                nums.swapAt(left, right)
                left += 1
                
                while left <= right {
                    if nums[left] == 0 {
                        break
                    }

                    left += 1
                }
            }   

            right += 1
        }
    }
}