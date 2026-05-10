// Approach: Matrix, Excellent Solution
// Time complexity: O(n^2)
// Space complexity: O(1)
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count

        // transpose
        for i in 0..<n {
            for j in i+1..<n {
                (matrix[i][j], matrix[j][i]) =
                (matrix[j][i], matrix[i][j])
            }
        }

        // reverse rows
        for i in 0..<n {
            matrix[i].reverse()
        }
    }
}