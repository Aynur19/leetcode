// Approach: Knuth-Morris-Pratt
// Time complexity: O(n + m)
// Space complexity: O(m)
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let text = Array(haystack)
        let pattern = Array(needle)

        if pattern.isEmpty { return 0 }

        let lps = buildLPS(pattern)

        var i = 0
        var j = 0

        while i < text.count {
            if text[i] == pattern[j] {
                i += 1
                j += 1

                if j == pattern.count {
                    return i - j
                }
            } else {
                if j > 0 {
                    j = lps[j - 1]
                } else {
                    i += 1
                }
            }
        }

        return -1
    }

    func buildLPS(_ pattern: [Character]) -> [Int] {
        var lps = Array(repeating: 0, count: pattern.count)

        var length = 0
        var i = 1

        while i < pattern.count {
            if pattern[i] == pattern[length] {
                length += 1
                lps[i] = length
                i += 1
            } else {
                if length > 0 {
                    length = lps[length - 1]
                } else {
                    lps[i] = 0
                    i += 1
                }
            }
        }

        return lps
    }
}