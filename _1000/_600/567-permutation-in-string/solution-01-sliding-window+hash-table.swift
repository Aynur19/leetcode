// Approach: Sliding Window, Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let lenght = s1.count
        let chars = Array(s2)
        let freq = s1.reduce(into: [Character: Int]()) { dict, char in 
            dict[char, default: 0] += 1
        }

        guard var left = getFirstIndex(chars: chars, freq: freq, start: 0, lenght: lenght) else {
            return false
        }

        var right = left
        var dict = freq
        while right < chars.count {
            let char = chars[right]
            
            if let count = dict[char] {
                if count == 1 {
                    dict[char] = nil

                    if dict.isEmpty {
                        return true
                    }
                } else {
                    dict[char] = count - 1
                }

                right += 1
                continue
            } 
            
            if freq[char] == nil {
                guard var index = getFirstIndex(chars: chars, freq: freq, start: right, lenght: lenght) else {
                    return false
                }

                left = index
                right = left
                dict = freq
                continue
            }

            while chars[left] != char {
                dict[chars[left], default: 0] += 1
                left += 1
            }

            left += 1
            right += 1 
        } 

        return false
    }

    private func getFirstIndex(chars: [Character], freq: [Character: Int], start: Int, lenght: Int) -> Int? {
        var index = start

        while index < chars.count, index + lenght <= chars.count {
            if freq[chars[index]] != nil {
                return index
            }

            index += 1
        }

        return nil
    }
}