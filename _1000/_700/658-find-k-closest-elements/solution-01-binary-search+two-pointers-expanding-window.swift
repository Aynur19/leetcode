// Approach: Binary Search + Two Pointers (Expanding Window)
// Time complexity: O(log n + k)
// Space complexity: O(k)
class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        guard arr.count > 1 else { 
            return arr
        }

        var result = [findClosestItemIndex(nums: arr, target: x)]
        var left = result.last!
        var right = result.last!

        while result.count != k {
            if let index = getNextClosestItemIndex(nums: arr, target: x, left: left - 1, right: right + 1) {
                left = min(left, index)
                right = max(right, index)
                result.append(index)
            }
        }
        
        return Array(arr[left...right])        
    }

    private func getNextClosestItemIndex(nums: [Int], target: Int, left: Int, right: Int) -> Int? {
        guard left >= 0, right < nums.count else { 
            if left >= 0 { return left }
            if right < nums.count { return right }
            return nil
        }

        let diffLeft = abs(nums[left] - target)
        let diffright = abs(nums[right] - target)

        return diffLeft <= diffright ? left : right
    }

    private func findClosestItemIndex(nums: [Int], target: Int) -> Int {
        var (left, right) = (0, nums.count - 1)

        while left < right {
            var mid = left + (right - left) / 2
            let curr = nums[mid]

            if nums[mid] == target {
                left = mid
                break
            } else if nums[mid] > target {
                right = mid
            } else {
                left = mid + 1
            }
        }

        if nums[left] == target {
            while left > 0, nums[left - 1] == target {
                left -= 1
            }
            return left
        }

        var result = left
        if let index = getNextClosestItemIndex(nums: nums, target: target, left: left - 1, right: left) {
            result = index
        }

        if let index = getNextClosestItemIndex(nums: nums, target: target, left: result, right: left + 1) {
            result = index
        }

        return result
    }
}