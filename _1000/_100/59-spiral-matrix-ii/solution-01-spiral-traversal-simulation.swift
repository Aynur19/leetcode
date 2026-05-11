// Approach: Matrix, Simulation
// Time complexity: O(n^2)
// Space complexity: O(1) (with result n^2)
class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)
        var (row, col) = (0, 0)
        var num = 2

        matrix[0][0] = 1
        while true {
            while col < n - 1, matrix[row][col + 1] == 0 {
                col += 1
                matrix[row][col] = num
                num += 1
            } 

            while row < n - 1, matrix[row + 1][col] == 0 {
                row += 1
                matrix[row][col] = num
                num += 1
            }
            
            while col > 0, matrix[row][col - 1] == 0 {
                col -= 1
                matrix[row][col] = num
                num += 1
            }

            while row > 0, matrix[row - 1][col] == 0 {
                row -= 1
                matrix[row][col] = num
                num += 1
            }
            
            if col < n - 1, matrix[row][col + 1] == 0 {
                continue
            } else {
                return matrix
            }
        }
    }
}