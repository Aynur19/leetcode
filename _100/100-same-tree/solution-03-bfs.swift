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

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {

        var queue: [(TreeNode?, TreeNode?)] = [(p, q)]
        var index = 0

        while index < queue.count {

            let (p, q) = queue[index]
            index += 1

            if p == nil && q == nil {
                continue
            }

            guard let p, let q else {
                return false
            }

            guard p.val == q.val else {
                return false
            }

            queue.append((p.left, q.left))
            queue.append((p.right, q.right))
        }

        return true
    }
}