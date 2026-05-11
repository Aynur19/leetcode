/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

// Approach: BFS
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else {
            return []
        }

        var result = [[Int]]()
        var queue = [root]
        var index = 0
        var isZigzag = false

        while index < queue.count {
            let levelSize = queue.count - index
            var level = [Int]()

            for _ in 0..<levelSize {
                let node = queue[index]
                index += 1

                level.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }

            if isZigzag {
                result.append(Array(level.reversed()))
            } else {
                result.append(level)
            }
            isZigzag.toggle()
        }

        return result
    }
}