// Approach: Matrix, Excellent Solution
// Time complexity: O(n^2)
// Space complexity: O(1)
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count
        let lastIdx = n - 1

        for row in 0..<((n + 1) / 2) {
            for col in row..<(lastIdx - row) {
                var tmp = matrix[row][col]
                matrix[row][col] = matrix[lastIdx - col][row]
                matrix[lastIdx - col][row] = matrix[lastIdx - row][lastIdx - col]
                matrix[lastIdx - row][lastIdx - col] = matrix[col][lastIdx - row]
                matrix[col][lastIdx - row] = tmp
            }
        }
    }
}
