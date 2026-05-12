// Approach: Union Find
// Time complexity: O(n*m)
// Space complexity: O(n*m)
class UnionFind {
    var parent: [Int]
    var rank: [Int]
    var count: Int

    init(_ grid: [[Character]]) {
        let rows = grid.count
        let cols = grid[0].count

        parent = Array(repeating: -1, count: rows * cols)
        rank = Array(repeating: 0, count: rows * cols)

        count = 0

        for r in 0..<rows {
            for c in 0..<cols {
                if grid[r][c] == "1" {
                    let id = r * cols + c
                    parent[id] = id
                    count += 1
                }
            }
        }
    }

    func find(_ x: Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x])
        }
        return parent[x]
    }

    func union(_ x: Int, _ y: Int) {
        let px = find(x)
        let py = find(y)

        if px == py { return }

        if rank[px] < rank[py] {
            parent[px] = py
        } else if rank[px] > rank[py] {
            parent[py] = px
        } else {
            parent[py] = px
            rank[px] += 1
        }

        count -= 1
    }
}

class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count

        let uf = UnionFind(grid)

        let dirs = [(1,0),(0,1)]

        for r in 0..<rows {
            for c in 0..<cols {
                if grid[r][c] == "1" {
                    for (dr, dc) in dirs {
                        let nr = r + dr
                        let nc = c + dc

                        guard nr < rows,
                              nc < cols,
                              grid[nr][nc] == "1"
                        else {
                            continue
                        }

                        uf.union(r * cols + c, nr * cols + nc)
                    }
                }
            }
        }

        return uf.count
    }
}