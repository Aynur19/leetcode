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

// Approach: DFS + Iteratively
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var stack1 = [root?.left]
        var stack2 = [root?.right] 

        while !stack1.isEmpty, !stack2.isEmpty {
            let node1 = stack1.removeLast()
            let node2 = stack2.removeLast()

            if node1 == nil && node2 == nil {
                continue
            }

            guard let node1, let node2 else {
                return false
            }

            guard node1.val == node2.val else {
                return false
            }

            stack1.append(contentsOf: [node1.left, node1.right])
            stack2.append(contentsOf: [node2.right, node2.left])
        }

        return true
    }
}