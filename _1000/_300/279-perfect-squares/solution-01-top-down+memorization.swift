// Approach: Top-down, memorization
// Time complexity: O(n * sqrt(n))
// Space complexity: O(n)
class Solution {
    func numSquares(_ n: Int) -> Int {
        var memo = [Int: Int]()

        return dfs(n, &memo)
    }

    private func dfs(_ n: Int, _ memo: inout [Int: Int]) -> Int {
        if n == 0 {
            return 0
        }

        if let cached = memo[n] {
            return cached
        }

        var result = Int.max

        var i = 1

        while i * i <= n {
            result = min(result, 1 + dfs(n - i * i, &memo))
            i += 1
        }

        memo[n] = result

        return result
    }
}