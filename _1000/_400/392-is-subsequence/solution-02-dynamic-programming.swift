// Approach: Two pointers
// Time complexity: O(|s| * |t|)
// Space complexity: O(|s| * |t|)
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)

        let rows = s.count + 1
        let cols = t.count + 1

        var dp = Array(
            repeating: Array(repeating: false, count: cols),
            count: rows
        )

        // empty s is always subsequence
        for j in 0..<cols {
            dp[0][j] = true
        }

        for i in 1..<rows {
            for j in 1..<cols {
                if s[i - 1] == t[j - 1] {
                    dp[i][j] =
                        dp[i - 1][j - 1] ||
                        dp[i][j - 1]
                } else {
                    dp[i][j] = dp[i][j - 1]
                }
            }
        }

        return dp[s.count][t.count]
    }
}