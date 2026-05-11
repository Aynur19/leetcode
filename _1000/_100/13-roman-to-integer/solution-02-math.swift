// Approach: Math
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func romanToInt(_ s: String) -> Int {
        let map: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        let chars = Array(s)
        var result = 0

        for i in 0..<chars.count {
            let current = map[chars[i]]!

            if i + 1 < chars.count,
                current < map[chars[i + 1]]! 
            {
                result -= current
            } else {
                result += current
            }
        }

        return result
    }
}