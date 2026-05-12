// Approach: Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard nums.count > 1 else {
            return nums.count == 1 ? ["\(nums[0])"] : [] 
        }

        var result = [String]()
        var (left, right) = (0, 1)
        
        while right < nums.count {
            if nums[right] - nums[right - 1] > 1 {
                if right - left == 1 {
                    result.append("\(nums[left])")
                } else {
                    result.append("\(nums[left])->\(nums[right - 1])")
                }

                left = right
            }

            right += 1
        }

        if right - left == 1 {
            result.append("\(nums[left])")
        } else {
            result.append("\(nums[left])->\(nums[right - 1])")
        }

        return result
    }
}