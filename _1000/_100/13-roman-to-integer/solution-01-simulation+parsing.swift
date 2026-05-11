// Approach: Simulation / Parsing
// Time complexity: O(n)
// Space complexity: O(1) (for current solution O(n))
class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanNumbers = [
            "M": 1000, "CM": 900,
            "D": 500, "CD": 400,
            "C": 100, "XC": 90,
            "L": 50, "XL": 40,
            "X": 10, "IX": 9,
            "V": 5, "IV": 4,
            "I": 1
        ]
        
        let chars = Array(s)
        var result = 0
        var index = 0

        while index < chars.count {
            if index < chars.count - 1,
               let num = romanNumbers[String(chars[index...(index + 1)])] 
            {
                result += num
                index += 2
            } else if let num = romanNumbers[String(chars[index])] {
                result += num
                index += 1
            } else {
                 assertionFailure()
            }
        }

        return result
    }
}