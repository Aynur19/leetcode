// Approach: Counting
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxPower(_ s: String) -> Int {
        guard !s.isEmpty else {
            return 0
        }

        var lastChar = s.first!
        var count = 0
        var result = 0

        for char in s {
            if char == lastChar {
                count += 1
            } else {
                count = 1
                lastChar = char
            }

            result = max(result, count) 
        }

        return result
    }
}