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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root else { 
            return []
        }       

        var result = [[root.val]]
        var queue = [root]
        var index = 0
        var count = 1 

        while index < queue.count {
            var tmp = [Int]()

            while count > 0 {
                if let left = queue[index].left {
                    tmp.append(left.val)
                    queue.append(left)
                } 

                if let right = queue[index].right {
                    tmp.append(right.val)
                    queue.append(right)
                }

                index += 1
                count -= 1
            }
            
            if !tmp.isEmpty {
                result.append(tmp)
            }
            count = tmp.count           
        }

        return result
    }
}