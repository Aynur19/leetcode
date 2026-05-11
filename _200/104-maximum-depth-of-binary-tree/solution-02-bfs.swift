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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        var levels = 0
        var queue = [root]
        var index = 0

        while index < queue.count {
            levels += 1
            let levelNodes = queue.count - index

            for _ in 0..<levelNodes {
                if let left = queue[index].left {
                    queue.append(left)
                }

                if let right = queue[index].right {
                    queue.append(right)
                }

                index += 1
            }
        }

        return levels
    }
}