// Approach: Set + Sliding Window
// Time complexity: O(n * unique(n))
// Space complexity: O(n)
class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let chars = Array(s)
        let uniqueChars = Set(chars)

        guard uniqueChars.count > 1 else {
            return chars.count
        }

        var result = 0
        for char in uniqueChars {
            result = max(result, getLongestRepeatingCharacter(chars: chars, char: char, k: k))
        }

        return result
    }

    func getLongestRepeatingCharacter(chars: [Character], char: Character, k: Int) -> Int {
        var result = 0
        var (left, right) = (-1, 0)

        var replacements = 0
        var replacedIndices = [Int]()
        var ptr = 0

        while right < chars.count {
            if chars[right] != char {
                if k == 0 {
                    left = right
                } else {
                    replacedIndices.append(right)

                    if replacements < k {    
                        replacements += 1
                    } else {
                        left = replacedIndices[ptr]
                        ptr += 1
                    }
                }
            }

            result = max(result, right - left)
            right += 1
        }

        return result
    }
}