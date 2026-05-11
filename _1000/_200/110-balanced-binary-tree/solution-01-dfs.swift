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
    func isBalanced(_ root: TreeNode?) -> Bool {
        return checkBalance(root: root).result 
    }

    func checkBalance(root: TreeNode?) -> (depth: Int, result: Bool) {
        guard let root else {
            return (0, true)
        }

        let left = checkBalance(root: root.left)
        if !left.result {
            return left
        }

        let right = checkBalance(root: root.right)
        if !right.result {
            return right
        }

        let depth = max(left.depth, right.depth) + 1
        let result = abs(left.depth - right.depth) < 2

        return (depth, result)
    }
}