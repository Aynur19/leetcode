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

// Approach: DFS iterative
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var stack: [(TreeNode?, TreeNode?)] = [
            (root?.left, root?.right)
        ]

        while !stack.isEmpty {
            let (left, right) = stack.removeLast()

            if left == nil && right == nil {
                continue
            }

            guard let left, let right else {
                return false
            }

            guard left.val == right.val else {
                return false
            }

            stack.append((left.left, right.right))
            stack.append((left.right, right.left))
        }

        return true
    }
}