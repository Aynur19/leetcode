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

// Approach: Binary Tree, Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func createBinaryTree(_ descriptions: [[Int]]) -> TreeNode? {
        var dict = [Int: TreeNode]()
        var roots = Set<Int>()
        var childs = Set<Int>()

        for desc in descriptions {
            let root = dict[desc[0]] ?? TreeNode(desc[0])
            let child = dict[desc[1]] ?? TreeNode(desc[1])

            if desc[2] == 1 {
                root.left = child
            } else {
                root.right = child
            }

            _ = roots.insert(root.val)
            _ = childs.insert(child.val)

            dict[root.val] = root
            dict[child.val] = child
        }       

        if let rootVal = roots.subtracting(childs).first {
            return dict[rootVal]
        }

        return nil
    }
}