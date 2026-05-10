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

// Approach: Recurcive
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        isMirror(root?.left, root?.right)
    }

    func isMirror(
        _ left: TreeNode?,
        _ right: TreeNode?
    ) -> Bool {
        if left == nil && right == nil {
            return true
        }

        guard let left, let right else {
            return false
        }

        guard left.val == right.val else {
            return false
        }

        return isMirror(left.left, right.right)
            && isMirror(left.right, right.left)
    }
}