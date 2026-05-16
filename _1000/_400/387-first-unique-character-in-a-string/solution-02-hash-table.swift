// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(k)
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let chars = Array(s)

        var freq = [Character: Int]()

        for ch in chars {
            freq[ch, default: 0] += 1
        }

        for i in chars.indices {
            if freq[chars[i]] == 1 {
                return i
            }
        }

        return -1
    }
}