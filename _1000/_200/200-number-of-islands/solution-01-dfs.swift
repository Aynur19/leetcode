// Approach: DFS
// Time complexity: O(n*m)
// Space complexity: O(n*m)
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var result = 0

        for row in grid.indices {
            for col in grid[row].indices {
                if grid[row][col] == "1" {
                    result += 1
                    clear(grid: &grid, row: row, col: col)
                }
            }
        }

        return result
    }

    func dfs(grid: inout [[Character]], row: Int, col: Int) {
        guard row >= 0, row < grid.count,
              col >= 0, col < grid[0].count,
              grid[row][col] == "1"
        else { return }

        grid[row][col] = "0"

        clear(grid: &grid, row: row + 1, col: col)
        clear(grid: &grid, row: row - 1, col: col)
        clear(grid: &grid, row: row, col: col + 1)
        clear(grid: &grid, row: row, col: col - 1)
    }
}