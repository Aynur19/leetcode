// Approach: DFS + Backtracking
// Time complexity: O(Cn * n)
// Space complexity: O(n)
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        var path = [Character]()

        backtrack(result: &result, path: &path, open: 0, close: 0, n: n)

        return result
    }

    func backtrack(
        result: inout [String],
        path: inout [Character],
        open: Int,
        close: Int,
        n: Int
    ) {
        if path.count == n * 2 {
            result.append(String(path))
            return
        }

        if open < n {
            path.append("(")
            backtrack(result: &result, path: &path, open: open + 1, close: close, n: n)
            path.removeLast()
        }

        if close < open {
            path.append(")")
            backtrack(result: &result, path: &path, open: open, close: close + 1, n: n)
            path.removeLast()
        }
    }
}