// Approach: Expand Around Center
// Time complexity: 
// Space complexity: 
class Solution {
    func longestPalindrome(_ s: String) -> String {
        var chars = Array(s)
        let n = chars.count
        var start = 0
        var end = 0

        guard n > 1 else {
            return s
        }

        for index in 0..<(n - 1) {
            update(start: &start, end: &end, leftRight: check(chars: chars, left: index, right: index))
            update(start: &start, end: &end, leftRight: check(chars: chars, left: index, right: index + 1))
        }

        return String(chars[start...end])
    }

    func check(chars: [Character], left: Int, right: Int) -> (Int, Int) {
        guard chars[left] == chars[right] else {
            return (left + 1, right - 1)
        }

        guard left - 1 >= 0,
              right + 1 < chars.count  
        else { return (left, right) }

        return check(chars: chars, left: left - 1, right: right + 1)
    }

    func update(start: inout Int, end: inout Int, leftRight: (Int, Int)) {
        let (left, right) = leftRight

        guard right > left else { return }

        if right - left > end - start {
            start = left
            end = right
        }
    }
}