// Approach: BFS
// Time complexity: O(n*m)
// Space complexity: O(n*m)
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        let rows = grid.count
        let cols = grid[0].count

        var islands = 0

        for row in 0..<rows {
            for col in 0..<cols {
                if grid[row][col] == "1" {
                    islands += 1
                    bfs(grid: &grid, startRow: row, startCol: col)
                }
            }
        }

        return islands
    }

    func bfs(grid: inout [[Character]], startRow: Int, startCol: Int) {
        let directions = [(1, 0), (-1, 0), (0, 1), (0, -1)]

        var queue = [(Int, Int)]()
        queue.append((startRow, startCol))

        grid[startRow][startCol] = "0"
        var index = 0

        while index < queue.count {
            let (row, col) = queue[index]
            index += 1

            for (dr, dc) in directions {
                let newRow = row + dr
                let newCol = col + dc

                guard newRow >= 0, newRow < grid.count,
                      newCol >= 0, newCol < grid[0].count,
                      grid[newRow][newCol] == "1"
                else { continue }

                grid[newRow][newCol] = "0"
                queue.append((newRow, newCol))
            }
        }
    }
}