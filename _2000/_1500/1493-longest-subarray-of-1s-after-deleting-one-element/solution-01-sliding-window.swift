// Approach: Sliding Window
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var result = 0
        var left = 0
        var removes = 0

        for right in nums.indices {
            if nums[right] == 0 {
                if removes == 0 {
                    removes += 1
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

            result = max(result, right + 1 - left - removes)
        }

        return removes == 1 ? result : max(0, result - 1)
    }
}