// Approach: Sliding Window, Frequency Count
// Time complexity: O(n)
// Space complexity: O(1)

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else {
            return false
        }

        let s1Chars = Array(s1)
        let s2Chars = Array(s2)

        var s1Count = [Int](repeating: 0, count: 26)
        var windowCount = [Int](repeating: 0, count: 26)

        // Build frequency for s1
        for char in s1Chars {
            s1Count[index(char)] += 1
        }

        var left = 0

        for right in 0..<s2Chars.count {
            // Add right char to window
            windowCount[index(s2Chars[right])] += 1

            // Keep window size equal to s1.count
            if right - left + 1 > s1Chars.count {
                windowCount[index(s2Chars[left])] -= 1
                left += 1
            }

            // Compare frequencies
            if windowCount == s1Count {
                return true
            }
        }

        return false
    }

    private func index(_ char: Character) -> Int {
        Int(char.asciiValue! - Character("a").asciiValue!)
    }
}