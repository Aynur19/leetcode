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

// Approach: DFS
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return isSameTree(p: p, q: q)
    }

    func isSameTree(p: TreeNode?, q: TreeNode?) -> Bool {
        guard let p, let q else {
            return p == nil && q == nil
        }   

        guard p.val == q.val else {
            return false
        }

        return isSameTree(p: p.left, q: q.left) && isSameTree(p: p.right, q: q.right)
    }
}