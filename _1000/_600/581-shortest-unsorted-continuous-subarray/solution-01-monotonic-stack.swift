// Approach: Monotonic Stack
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        let n = nums.count

        var left = n
        var right = 0

        var stack = [Int]()

        // Find left boundary
        for i in 0..<n {
            while let last = stack.last,
                  nums[last] > nums[i] {
                left = min(left, stack.removeLast())
            }

            stack.append(i)
        }

        stack.removeAll()

        // Find right boundary
        for i in stride(from: n - 1, through: 0, by: -1) {
            while let last = stack.last,
                  nums[last] < nums[i] {
                right = max(right, stack.removeLast())
            }

            stack.append(i)
        }

        return right > left ? right - left + 1 : 0
    }
}