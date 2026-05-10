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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var stackL = [root?.left]
        var stackR = [root?.right] 

        while !stackL.isEmpty, !stackR.isEmpty {
            guard stackL.count == stackR.count else {
                return false
            }

            let n = stackL.count
            var isNils = true
            var stackL2 = [TreeNode?]()
            var stackR2 = [TreeNode?]()

            for i in 0..<n {
                let node1 = stackL[i]
                let node2 = stackR[i]

                guard isSymmetric(node1: node1, node2: node2) else {
                    return false
                }

                isNils = isNils && node1 == nil

                stackL2.append(contentsOf: [node1?.left, node1?.right])
                stackR2.append(contentsOf: [node2?.right, node2?.left])
            }

            if isNils {
                return true
            }

            stackL = stackL2
            stackR = stackR2
        }

        return true
    }

    func isSymmetric(node1: TreeNode?, node2: TreeNode?) -> Bool {
        if node1 == nil && node2 == nil {
            return true
        }

        guard let node1, let node2 else {
            return false
        }

        guard node1.val == node2.val else {
            return false
        }

        return true
    }
}