// Approach: DFS, Math
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    private let mod = 1_000_000_007

    func assignEdgeWeights(_ edges: [[Int]]) -> Int {
        let n = edges.count + 1

        var graph = Array(repeating: [Int](), count: n + 1)

        for edge in edges {
            let u = edge[0]
            let v = edge[1]

            graph[u].append(v)
            graph[v].append(u)
        }

        var maxDepth = 0

        func dfs(_ node: Int, _ parent: Int, _ depth: Int) {
            maxDepth = max(maxDepth, depth)

            for next in graph[node] {
                if next != parent {
                    dfs(next, node, depth + 1)
                }
            }
        }

        dfs(1, 0, 0)

        if maxDepth == 0 {
            return 0
        }

        return modPow(2, maxDepth - 1)
    }

    private func modPow(_ base: Int, _ power: Int) -> Int {
        var result: Int64 = 1
        var base = Int64(base)
        var power = power

        while power > 0 {
            if power & 1 == 1 {
                result = (result * base) % Int64(mod)
            }

            base = (base * base) % Int64(mod)
            power >>= 1
        }

        return Int(result)
    }
}