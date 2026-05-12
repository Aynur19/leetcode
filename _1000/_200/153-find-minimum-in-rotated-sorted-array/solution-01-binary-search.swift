// Approach: Binary Search
// Time complexity: O(lon n)
// Space complexity: O(1)
class Solution {
    func findMin(_ nums: [Int]) -> Int {
        let n = nums.count
        var (left, right) = (0, n - 1)

        while left < right {
            let mid = left + (right - left) / 2

            if nums[mid] > nums[right] {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return nums[left]
    }
}