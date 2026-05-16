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

// Approach: DFS, Stack
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        var stack = [(node: TreeNode, isLeft: Bool)]()
        stack.append((root, false))

        var result = 0
        while !stack.isEmpty {
            let (node, isLeft) = stack.removeLast()

            if node.left == nil, node.right == nil {
                result += isLeft ? node.val : 0
                continue
            }     

            if let left = node.left {
                stack.append((left, true))
            }

            if let right = node.right {
                stack.append((right, false))
            }    
        }

        return result
    }
}