// Approach: Sliding Window + Count HashMap
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = Array(s)
        let n = chars.count
        
        guard n > 1 else {
            return n
        }

        var dict = [Character:Int]()
        var left = 0
        var right = 0
        var result = 1

        while right < n {
            let char = chars[right]

            if let count = dict[char], count > 0 {
                while chars[left] != char {
                    dict[chars[left]]! -= 1
                    left += 1
                }    

                dict[chars[left]]! -= 1
                left += 1
            }

            dict[char, default: 0] += 1
            result = max(result, right - left + 1)
            right += 1
        }

        return result
    }
}