// Approach: HashTable + Sliding Window
// Time complexity: O(n)
// Space complexity: O(unique(n))
class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        let chars = Array(s)

        var freq = [Character: Int]()

        var left = 0
        var maxFreq = 0
        var result = 0

        for right in chars.indices {
            freq[chars[right], default: 0] += 1

            maxFreq = max(maxFreq, freq[chars[right]]!)

            while (right - left + 1) - maxFreq > k {
                freq[chars[left]]! -= 1
                left += 1
            }

            result = max(result, right - left + 1)
        }

        return result
    }
}