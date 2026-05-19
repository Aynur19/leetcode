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

// Approach: BST, BFS, Iterative
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root else {
            return 0
        }

        var result = 0
        var stack = [root]

        while !stack.isEmpty {
            var newStack = [TreeNode?]()

            while !stack.isEmpty {
                let node = stack.removeLast()
                
                if node.val < low {
                    newStack.append(node.right)
                } else if node.val > high {
                    newStack.append(node.left)
                } else {
                    result += node.val
                    
                    newStack.append(node.left)
                    newStack.append(node.right)
                }
            }
            stack = newStack.compactMap { $0 }
        }

        return result
    }
}