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

// Approach: DFS + Bounds
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValidBST(root: root, boundL: Int64.min, boundR: Int64.max)
    }

    func isValidBST(root: TreeNode?, boundL: Int64, boundR: Int64) -> Bool {
        guard let value = root?.val else { 
            return true 
        }

        let val = Int64(value)
        if val <= boundL || val >= boundR { 
            return false
        }
        
        return isValidBST(root: root?.left, boundL: boundL, boundR: val) 
            && isValidBST(root: root?.right, boundL: val, boundR: boundR)
    }
}