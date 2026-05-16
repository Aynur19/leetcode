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

// Approach: BFS
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root else {
            return 0
        }

        var layer = [(node: TreeNode, isLeft: Bool)]()
        layer.append((root, false))

        var result = 0
        while !layer.isEmpty {
            var newLayer = [(node: TreeNode, isLeft: Bool)]()

            while !layer.isEmpty {
                let (node, isLeft) = layer.removeLast()

                if node.left == nil, node.right == nil {
                    result += isLeft ? node.val : 0
                    continue
                }     

                if let left = node.left {
                    newLayer.append((left, true))
                }

                if let right = node.right {
                    newLayer.append((right, false))
                }    
            }

            layer = newLayer
        }

        return result
    }
}