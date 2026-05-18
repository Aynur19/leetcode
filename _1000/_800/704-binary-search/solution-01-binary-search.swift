// Approach: Binary Search
// Time complexity: O(log n)
// Space complexity: O(1)
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var (left, right) = (0, nums.count - 1)

        while left < right {
            let mid = left + (right - left) / 2
            let num = nums[mid]

            if num == target {
                return mid
            } else if num < target {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return nums[left] == target ? left : -1
    }
}