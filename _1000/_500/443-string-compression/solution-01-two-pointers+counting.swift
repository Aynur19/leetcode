// Approach: Two Pointers, Counting
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        guard chars.count > 1 else {
            return 1
        }

        var count = 1
        var char = chars[0]
        var (left, right) = (0, 1)

        while right < chars.count {
            if chars[right] == char {
                count += 1
            } else {
                writeCounts(chars: &chars, char: char, left: &left, count: &count)
                char = chars[right]
            }

            right += 1
        }

        writeCounts(chars: &chars, char: char, left: &left, count: &count)
        return left
    }

    private func writeCounts(chars: inout [Character], char: Character, left: inout Int, count: inout Int) {
        chars[left] = char
        left += 1

        if count > 1 {
            let countChars = Array("\(count)")
            for c in countChars {
                chars[left] = c
                left += 1
            }
        }
        count = 1
    }
}