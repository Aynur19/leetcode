// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(k) (k is szie of unique chars count)
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var dict = [Character: Int]()

        for char in s {
            dict[char, default: 0] += 1
        }

        for char in t {
            if let count = dict[char] {
                dict[char] = count == 1 ? nil : count - 1
            } else {
                return false
            }
        }

        return dict.isEmpty
    }
}