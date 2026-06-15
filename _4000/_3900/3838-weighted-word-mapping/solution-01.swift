// Approach: Array
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func mapWordWeights(_ words: [String], _ weights: [Int]) -> String {
        let charInt: [Character: Int] = [
            "a": 0, "b": 1, "c": 2, "d": 3, 
            "e": 4, "f": 5, "g": 6, "h": 7, 
            "i": 8, "j": 9, "k": 10, "l": 11, 
            "m": 12, "n": 13, "o": 14, "p": 15, 
            "q": 16, "r": 17, "s": 18, "t": 19, 
            "u": 20, "v": 21, "w": 22, "x": 23, 
            "y": 24, "z": 25
        ]

        let intChar: [Int: Character] = [
            25: "a", 24: "b", 23: "c", 22: "d", 
            21: "e", 20: "f", 19: "g", 18: "h", 
            17: "i", 16: "j", 15: "k", 14: "l", 
            13: "m", 12: "n", 11: "o", 10: "p", 
            9: "q", 8: "r", 7: "s", 6: "t", 
            5: "u", 4: "v", 3: "w", 2: "x", 
            1: "y", 0: "z"
        ]

        var result = [Character]()

        for word in words {
            var sum = 0
            for char in word {
                sum += weights[charInt[char]!]
            }

            result.append(intChar[sum % 26]!)
        }        

        return String(result)
    }
}