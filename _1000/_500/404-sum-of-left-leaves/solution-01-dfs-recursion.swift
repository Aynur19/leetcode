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

// Approach: DFS, Recursion
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        return sumOfLeftLeaves(root: root, isLeft: false)
    }

    func sumOfLeftLeaves(root: TreeNode, isLeft: Bool) -> Int {
        if root.left == nil, root.right == nil {
            return isLeft ? root.val : 0
        }

        var result = 0

        if let left = root.left {
            result += sumOfLeftLeaves(root: left, isLeft: true)
        }

        if let right = root.right {
            result += sumOfLeftLeaves(root: right, isLeft: false)
        }

        return result
    }
}