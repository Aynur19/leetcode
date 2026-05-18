// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1) (for current solution - O(n))
class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var chars = Array(s)
        return validPalindrome(chars: chars, left: 0, right: chars.count - 1, isRemoved: false)
    }

    func validPalindrome(chars: [Character], left: Int, right: Int, isRemoved: Bool) -> Bool {
        var (left, right) = (left, right)

        while left < right {
            if chars[left] == chars[right] {
                left += 1
                right -= 1
                continue
            }

            if isRemoved {
                return false
            }

            return validPalindrome(chars: chars, left: left + 1, right: right, isRemoved: true)
                || validPalindrome(chars: chars, left: left, right: right - 1, isRemoved: true)

        }

        return true
    }
}