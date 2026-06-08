// Approach: Array
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var result = Array(repeating: 0, count: nums.count)
        var (left, right) = (0, result.count - 1)
        var pivots = 0

        for num in nums {
            if num < pivot {
                result[left] = num
                left += 1
            } else if num > pivot {
                result[right] = num
                right -= 1
            } else {
                pivots += 1
            }
        }

        while pivots > 0 {
            result[left] = pivot
            left += 1
            pivots -= 1
        }

        right = result.count - 1
        while left < right {
            result.swapAt(left, right)
            left += 1
            right -= 1
        }

        return result
    }
}