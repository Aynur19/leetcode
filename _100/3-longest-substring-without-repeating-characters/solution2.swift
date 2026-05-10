// Approach: HashMap + Last Seen Index
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dict = [Character:Int]()

        var index = -1
        var result = 0
        var tmp = -1

        for char in s {
            index += 1

            if let lastIndex = dict[char] {
                tmp = max(tmp, lastIndex)
            }

            dict[char] = index
            result = max(result, index - tmp)
        }

        return result
    }
}