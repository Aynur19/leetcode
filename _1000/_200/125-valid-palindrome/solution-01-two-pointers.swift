// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1) (for current solution - O(n))
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased())
        var (left, right) = (0, chars.count - 1)

        while left < right {
            if !chars[left].isAlphaNumeric {
                left += 1
                continue
            }

            if !chars[right].isAlphaNumeric {
                right -= 1
                continue
            }

            if chars[left] != chars[right] {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}

extension Character {
    var isAlphaNumeric: Bool {
        isLetter || isNumber
    }
}