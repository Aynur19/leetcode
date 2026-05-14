// Approach: BFS
// Time complexity: O(n * sqrt(n))
// Space complexity: O(n)
class Solution {
    func numSquares(_ n: Int) -> Int {
        var queue = [n]
        var visited: Set<Int> = [n]
        var level = 0

        while !queue.isEmpty {
            level += 1

            for _ in 0..<queue.count {
                let current = queue.removeFirst()

                var j = 1

                while j * j <= current {
                    let next = current - j * j

                    if next == 0 {
                        return level
                    }

                    if !visited.contains(next) {
                        visited.insert(next)
                        queue.append(next)
                    }

                    j += 1
                }
            }
        }

        return level
    }
}