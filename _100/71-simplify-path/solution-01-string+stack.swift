// Approach: String, Stack
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func simplifyPath(_ path: String) -> String {
        var result = [Substring]()
        
        for dir in path.split(separator: "/") {
            switch dir {
                case ".":
                    break

                case "..":
                    if !result.isEmpty {
                        _ = result.removeLast()
                    } 

                default:
                    result.append(dir)
            }
        }

        return "/" + result.joined(separator: "/")
    }
}