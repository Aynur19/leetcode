// Approach: Sliding Window
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        var flips = 0
        var (left, right) = (0, 0)
        
        while right < nums.count {
            if nums[right] != 1 {
                if flips < k {
                    flips += 1
                } else {
                    while left < nums.count {
                        if nums[left] == 0 {
                            left += 1
                            break
                        }
                        
                        left += 1
                    }
                }
            }

            result = max(result, right + 1 - left)
            right += 1
        }

        return result
    }
}