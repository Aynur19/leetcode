// Approach: Stack
// Time complexity: O(n) (worst O(n^2))
// Space complexity: O(n)
class Solution {
    func processStr(_ s: String) -> String {
        var result = [Character]()

        for char in s {
            switch char {
                case "*":
                    if !result.isEmpty {
                        _ = result.removeLast()
                    }

                case "#":
                    result.append(contentsOf: result)

                case "%":
                    result = result.reversed()

                default:
                    result.append(char) 
            }
        }

        return String(result)
    }
}