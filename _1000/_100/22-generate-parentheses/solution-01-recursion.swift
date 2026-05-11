// Approach: Recursion
// Time complexity: O(Cn * n)
// Space complexity: O(n)
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()

        generate(result: &result, current: "", opens: n, closes: n)
        
        return result
    }

    func generate(result: inout [String], current: String, opens: Int, closes: Int) {
        if opens > 0 {
            generate(result: &result, current: current + "(", opens: opens - 1, closes: closes)
        }

        if closes > opens {
            generate(result: &result, current: current + ")", opens: opens, closes: closes - 1)
        }

        if closes == 0 {
            result.append(current)
        }
    }
}
