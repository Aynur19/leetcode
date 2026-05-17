// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func reverseWords(_ s: String) -> String {
        var chars = Array(s)
        var start = 0

        for i in 0...chars.count {
            if i == chars.count || chars[i] == " " {
                reverse(&chars, start, i - 1)
                start = i + 1
            }
        }

        return String(chars)
    }

    private func reverse(_ chars: inout [Character], _ left: Int, _ right: Int) {
        var left = left
        var right = right

        while left < right {
            chars.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}