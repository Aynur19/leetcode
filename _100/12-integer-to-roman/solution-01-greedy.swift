// Approach: Greedy
// Time complexity: O(1)
// Space complexity: O(1)
class Solution {
    func intToRoman(_ num: Int) -> String {
        let romanNumbers: [(num: Int, s: String)] = [
            (1000, "M"), (900, "CM"),
            (500, "D"), (400, "CD"),
            (100, "C"), (90, "XC"),
            (50, "L"), (40, "XL"),
            (10, "X"), (9, "IX"),
            (5, "V"), (4, "IV"),
            (1, "I")
        ]

        var result = [String]()
        var num = num
        var index = 0

        while num > 0 {
            if num >= romanNumbers[index].num {
                num -= romanNumbers[index].num
                result.append(romanNumbers[index].s)
            } else {
                index += 1
            } 
        }

        return result.joined()
    }
}