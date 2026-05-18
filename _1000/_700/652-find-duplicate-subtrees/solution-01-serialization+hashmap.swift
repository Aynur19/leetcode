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

// Approach: Serialization + Hash map
// Time complexity: O(n)
// Space complexity: O(n)
final class Solution {

    struct Key: Hashable {
        let val: Int
        let leftID: Int
        let rightID: Int
    }

    func findDuplicateSubtrees(_ root: TreeNode?) -> [TreeNode?] {
        var keyToID = [Key: Int]()
        var idCount = [Int: Int]()
        var result = [TreeNode]()

        var nextID = 1 // 0 будет означать nil

        func dfs(_ node: TreeNode?) -> Int {
            guard let node = node else {
                return 0
            }

            let left = dfs(node.left)
            let right = dfs(node.right)

            let key = Key(val: node.val, leftID: left, rightID: right)

            let id: Int
            if let existing = keyToID[key] {
                id = existing
            } else {
                id = nextID
                nextID += 1
                keyToID[key] = id
            }

            idCount[id, default: 0] += 1

            // добавляем только при втором появлении
            if idCount[id] == 2 {
                result.append(node)
            }

            return id
        }

        _ = dfs(root)
        return result
    }
}