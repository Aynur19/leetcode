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

// Approach: Recursive
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func lowestCommonAncestor(
        _ root: TreeNode?,
        _ p: TreeNode?,
        _ q: TreeNode?
    ) -> TreeNode? {

        guard let root, let p, let q else {
            return nil
        }

        if p.val < root.val && q.val < root.val {
            return lowestCommonAncestor(root.left, p, q)
        }

        if p.val > root.val && q.val > root.val {
            return lowestCommonAncestor(root.right, p, q)
        }

        return root
    }
}