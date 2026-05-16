// Approach: Complex Sliding Window
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let (freqP, count) = getFreqCount(p: p)
        let chars = Array(s)

        guard chars.count >= count, count > 0 else {
            return []
        }

        var result = [Int]()
        var freqS = freqP
        var openChars = freqP.count

        var left = getIndex(chars: chars, freq: freqS, start: 0) 
        guard left >= 0, chars.count - left + 1 >= count else { 
            return []
        }

        var right = left
        while right < chars.count {
            let curr = chars[right]

            if let currCount = freqS[curr] { 
                freqS[curr] = currCount - 1

                if currCount == 1 {
                    openChars -= 1

                    if openChars == 0 {
                        result.append(left)
                        freqS[chars[left]] = 1
                        openChars = 1
                        left += 1
                    }
                } else if currCount <= 0 {
                    moveLeft(chars: chars, freq: &freqS, openChars: &openChars, char: curr, left: &left)
                }

                right += 1
                continue
            } 

            left = getIndex(chars: chars, freq: freqS, start: right)
            guard left >= 0, chars.count - left + 1 >= count else { 
                return result
            }

            right = left
            freqS = freqP
            openChars = freqP.count
        }

        return result
    }

    private func getFreqCount(p: String) -> ([Character: Int], Int) {
        var count = 0
        var freq = [Character: Int]()
        for char in p {
            freq[char, default: 0] += 1
            count += 1
        }

        return (freq, count)
    }

    private func getIndex(chars: [Character], freq: [Character: Int], start: Int) -> Int {
        var index = start
        while index < chars.count {
            if freq[chars[index]] != nil {
                return index
            }

            index += 1
        }

        return -1
    }

    private func moveLeft(chars: [Character], freq: inout [Character: Int], openChars: inout Int, char: Character, left: inout Int) {
        while left < chars.count {
            let currChar = chars[left]
            let count = freq[currChar]! 

            if count == -1 {
                freq[currChar] = 0
                left += 1
                return 
            } 
                
            if count == 0 {
                openChars += 1
            }

            freq[currChar] = count + 1
            left += 1
        }
    }
}