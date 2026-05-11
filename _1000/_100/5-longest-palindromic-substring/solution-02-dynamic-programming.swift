// Approach: Dynamic Programming
// Time complexity: O(n^2)
// Space complexity: O(n^2)
class Solution {
    func longestPalindrome(_ s: String) -> String {
        var chars = Array(s)
        let n = chars.count

        guard n > 1 else {
            return s
        }

        var dp = Array(repeating: Array(repeating: false, count: n), count: n)
        var startIndex = 0
        var lenght = 0

        for i in 0..<n {
            var row = 0
            var col = i

            while col < n {
                check(chars: chars, dp: &dp, row: row, col: col)

                if dp[row][col] {
                    if col - row + 1 > lenght {
                        startIndex = row
                        lenght = col - row + 1
                    }
                }

                row += 1
                col += 1
            }
        }

        return String(chars[startIndex...(startIndex + lenght - 1)])
    }

    func check(chars: [Character], dp: inout [[Bool]], row: Int, col: Int) {
        if row == col {
            return dp[row][col] = true
        }

        let charsIsEqual = chars[row] == chars[col]

        if col - row == 1 {
            return dp[row][col] = charsIsEqual 
        }

        dp[row][col] = charsIsEqual && dp[row + 1][col - 1]
    }
}