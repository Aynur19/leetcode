// Approach: Table
// Time complexity: O(1)
// Space complexity: O(1)
class Solution {
    func intToRoman(_ num: Int) -> String {
        let thousands = ["", "M", "MM", "MMM"]
        let hundreds = [
            "", "C", "CC", "CCC", "CD",
            "D", "DC", "DCC", "DCCC", "CM"
        ]
        let tens = [
            "", "X", "XX", "XXX", "XL",
            "L", "LX", "LXX", "LXXX", "XC"
        ]
        let ones = [
            "", "I", "II", "III", "IV",
            "V", "VI", "VII", "VIII", "IX"
        ]
        
        return thousands[num / 1000] +
                hundreds[num % 1000 / 100] +
                tens[num % 100 / 10] +
                ones[num % 10]
    }
}