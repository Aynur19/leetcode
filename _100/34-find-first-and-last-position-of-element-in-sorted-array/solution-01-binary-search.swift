// Approach: Binary Search
// Time complexity: O(log n)
// Space complexity: O(1)
class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        return [
            findLeftBound(nums: nums, target: target),
            findRightBound(nums: nums, target: target)
        ]
    }

    func findLeftBound(nums: [Int], target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = -1

        while left <= right {
            let mid = left + (right - left) / 2

            if target == nums[mid] {
                result = mid
                right = mid - 1
            } else if target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return result
    }

    func findRightBound(nums: [Int], target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var result = -1

        while left <= right {
            let mid = left + (right - left) / 2

            if target == nums[mid] {
                result = mid
                left = mid + 1
            } else if target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }

        return result
    }
}