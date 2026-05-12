// Approach: Sliding Window
// Time complexity: O(n)
// Space complexity: O(k) (k = 2 for current task)
class Solution {
    func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
        let chars = Array(s)
        var dict = [Character: Int]()
        var (left, right) = (0, 0)
        var result = 0

        while right < chars.count {
            let charR = chars[right]
            dict[charR, default: 0] += 1

            while dict.count > 2 {
                let charL = chars[left]

                if let count = dict[charL] {
                    dict[charL] = count == 1 ? nil : count - 1
                }

                left += 1
            }

            result = max(result, right - left + 1)
            right += 1
        }

        return result
    }
}