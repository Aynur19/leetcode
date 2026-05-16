/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Codec {
    // Time complexity: O(n)
    // Extra space complexity: O(h)
    // Output space complexity: O(n)
    func serialize(_ root: TreeNode?) -> String {
        var result = [String]()

        func dfs(_ node: TreeNode?) {
            guard let node else { return }

            result.append(String(node.val))

            dfs(node.left)
            dfs(node.right)
        }

        dfs(root)

        return result.joined(separator: ",")
    }

    // Time complexity: O(n)
    // Extra space complexity: O(h)
    // Output space complexity: O(n)
    func deserialize(_ data: String) -> TreeNode? {
        guard !data.isEmpty else {
            return nil
        }

        let values = data
            .split(separator: ",")
            .compactMap { Int($0) }

        var index = 0

        func build(_ lower: Int, _ upper: Int) -> TreeNode? {
            guard index < values.count else {
                return nil
            }

            let val = values[index]

            guard val > lower, val < upper else {
                return nil
            }

            index += 1

            let node = TreeNode(val)

            node.left = build(lower, val)
            node.right = build(val, upper)

            return node
        }

        return build(Int.min, Int.max)
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let ser = Codec()
 * let deser = Codec()
 * let tree: String = ser.serialize(root)
 * let ans = deser.deserialize(tree)
 * return ans
*/