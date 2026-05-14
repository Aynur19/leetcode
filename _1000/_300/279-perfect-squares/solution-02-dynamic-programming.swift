// Approach: Dynamic Programming
// Time complexity: O(n * sqrt(n))
// Space complexity: O(n)
class Solution {
    func numSquares(_ n: Int) -> Int {
        var dp = Array(repeating: Int.max, count: n + 1)
        dp[0] = 0

        for i in 1...n {
            var j = 1

            while j * j <= i {
                dp[i] = min(dp[i], dp[i - j * j] + 1)
                j += 1
            }
        }

    print(dp)
        return dp[n]
    }
}
