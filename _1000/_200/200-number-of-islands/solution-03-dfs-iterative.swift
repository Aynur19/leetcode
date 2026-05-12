// Approach: DFS Iterative
// Time complexity: O(n*m)
// Space complexity: O(n*m)
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        let dirs = [(1, 0), (-1, 0), (0, 1), (0, -1)]
        var grid = grid
        var islands = 0

        for r in grid.indices {
            for c in grid[r].indices {
                if grid[r][c] == "0" {
                    continue
                }

                var stack = [(r, c)]
                grid[r][c] = "0"
                islands += 1

                while !stack.isEmpty {
                    let (row, col) = stack.removeLast()

                    for (stepR, stepC) in dirs {
                        let newRow = row + stepR
                        let newCol = col + stepC

                        guard newRow >= 0, newRow < grid.count,
                            newCol >= 0, newCol < grid[0].count, 
                            grid[newRow][newCol] == "1"
                        else { continue }

                        grid[newRow][newCol] = "0"
                        stack.append((newRow, newCol))
                    }
                }
            }
        }

        return islands
    }
}