// Approach: Stack
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
                continue
            }

            let right = stack.removeLast()
            let left = stack.removeLast()

            switch token {
                case "+":   stack.append(left + right)
                case "-":   stack.append(left - right)
                case "*":   stack.append(left * right)
                default:    stack.append(left / right)
            }
        }

        return stack[0]
    }
}