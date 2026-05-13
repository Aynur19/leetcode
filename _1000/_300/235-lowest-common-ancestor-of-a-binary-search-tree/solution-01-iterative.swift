/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

// Approach: Iterative
// Time complexity: O(log n) (wrost O(n))
// Space complexity: O(1)
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p, let q else {
            return nil
        }

        var curr = root
        while let node = curr {
            if node.val < p.val, node.val < q.val {
                curr = node.right
            } else if node.val > p.val, node.val > q.val {
                curr = node.left
                continue
            } else {
                return node
            }
        }

        return curr
    }
}