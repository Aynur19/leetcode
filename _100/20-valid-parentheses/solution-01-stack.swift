// Approach: Stack
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count % 2 == 0 else { return false }

        let map: [Character: Character] = ["}": "{", "]": "[", ")": "("]
        var stack = [Character]()

        for char in s {
            if let openBracket = map[char] {
                guard !stack.isEmpty,
                      stack.removeLast() == openBracket 
                else { return false }
            } else {
                stack.append(char)
            }
        }

        return stack.isEmpty
    }
}