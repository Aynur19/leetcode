// Approach: Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var result = 0

        while left < right {
            let width = right - left
            let minHeight = min(height[left], height[right])

            result = max(result, minHeight * width)

            if height[right] > height[left] {
                left += 1
            } else {
                right -= 1
            }
        }

        return result
    }
}