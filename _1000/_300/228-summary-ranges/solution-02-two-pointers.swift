// Approach: Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        var result = [String]()

        var i = 0

        while i < nums.count {
            let start = nums[i]

            while i + 1 < nums.count,
                  nums[i + 1] == nums[i] + 1 {
                i += 1
            }

            let end = nums[i]

            if start == end {
                result.append("\(start)")
            } else {
                result.append("\(start)->\(end)")
            }

            i += 1
        }

        return result
    }
}