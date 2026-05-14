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
        guard let root, let p, let q else {
            return nil
        }

        guard root.val != p.val, root.val != q.val else {
            return root
        }

        let left = lowestCommonAncestor(root: root, curr: root.left, p: p, q: q) 
        let right = lowestCommonAncestor(root: root, curr: root.right, p: p, q: q)

        if left != nil, right != nil {
            return root
        } else {
            return left ?? right
        }
    }

    func lowestCommonAncestor(root: TreeNode, curr: TreeNode?, p: TreeNode, q: TreeNode) -> TreeNode? {
        guard let curr else {
            return nil
        } 

        var left = lowestCommonAncestor(root: curr, curr: curr.left, p: p, q: q) 
        var right = lowestCommonAncestor(root: curr, curr: curr.right, p: p, q: q)

        if curr.val == p.val || curr.val == q.val {
            if left == nil, right == nil {
                return root
            } else {
                return curr
            }    
        }

        if left != nil, right != nil {
            return curr
        } else {
            return left ?? right
        }
    }
}