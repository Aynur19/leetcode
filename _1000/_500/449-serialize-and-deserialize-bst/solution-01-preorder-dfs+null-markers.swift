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
    // Encodes a tree to a single string.
    // Time complexity: O(n)
    // Extra space complexity: O(n)
    // Output space complexity: O(n)
    func serialize(_ root: TreeNode?) -> String {
        var stack = [root]
        var result = [String]()
        while !stack.isEmpty {
            guard let node = stack.removeLast() else {
                result.append(";")
                continue    
            }
            
            result.append("\(node.val);")
            stack.append(node.right)
            stack.append(node.left)
        }

        return result.joined()
    }
    
    // Decodes your encoded data to tree.
    // Time complexity: O(n)
    // Extra space complexity: O(n)
    // Output space complexity: O(n)
    func deserialize(_ data: String) -> TreeNode? {
        var values = data.split(separator: ";", omittingEmptySubsequences: false).map { Int($0) }
        guard !values.isEmpty, let value = values[0] else {
            return nil
        }

        let root = TreeNode(value)
        guard values.count > 1 else {
            return root
        }

        var index = 1
        deserialize(root: root, values: values, index: &index, isLeft: true)
        
        index += 1
        deserialize(root: root, values: values, index: &index, isLeft: false)

        return root
    }

    func deserialize(root: TreeNode, values: [Int?], index: inout Int, isLeft: Bool) {
        guard index < values.count, let val = values[index] else {
            return 
        } 

        let node = TreeNode(val)
        
        if isLeft {
            root.left = node
        } else {
            root.right = node
        }
            
        index += 1
        deserialize(root: node, values: values, index: &index, isLeft: true)
        
        index += 1
        deserialize(root: node, values: values, index: &index, isLeft: false)
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