// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var counts = Array(repeating: 0, count: 26)

        for char in s {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            counts[index] += 1
        }

        for char in t {
            let index = Int(char.asciiValue! - Character("a").asciiValue!)
            counts[index] -= 1
        }

        return counts.allSatisfy { $0 == 0 }
    }
}