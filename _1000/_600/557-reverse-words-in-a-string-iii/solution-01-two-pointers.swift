// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func reverseWords(_ s: String) -> String {
        var chars = Array(s)

        var (left, right) = getIndices(chars: chars, start: 0)
        var lastRight = right
        
        while left != -1 {
            while left < right {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }

            (left, right) = getIndices(chars: chars, start: lastRight + 1)
            lastRight = right
        }

        return String(chars)
    }

    private func getIndices(chars: [Character], start: Int) -> (Int, Int) {
        guard start < chars.count else {
            return (-1, -1)
        }

        var left = start
        while left < chars.count {
            if chars[left] != " " {
                break
            } 

            left += 1
        }

        var right = left
        while right < chars.count {
            if chars[right] == " " {
                break
            } 

            right += 1
        }
        right -= 1

        guard left != right else {
            return getIndices(chars: chars, start: left + 1)
        }

        return (left, right)
    }
}