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

// Approach: DFS
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root else {
            return nil
        }

        if root === p || root === q {
            return root
        }

        let left = lowestCommonAncestor(root.left, p, q) 
        let right = lowestCommonAncestor(root.right, p, q)

        if left != nil, right != nil {
            return root
        } 
        
        return left ?? right
    }
}