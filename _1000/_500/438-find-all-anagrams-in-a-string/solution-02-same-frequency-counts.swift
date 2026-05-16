// Approach: same frequency counts
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let s = Array(s)
        let p = Array(p)

        guard s.count >= p.count else {
            return []
        }

        var result = [Int]()

        var freqP = Array(repeating: 0, count: 26)
        var freqS = Array(repeating: 0, count: 26)

        for ch in p {
            freqP[Int(ch.asciiValue! - 97)] += 1
        }

        for i in 0..<s.count {
            freqS[Int(s[i].asciiValue! - 97)] += 1

            if i >= p.count {
                freqS[Int(s[i - p.count].asciiValue! - 97)] -= 1
            }

            if freqS == freqP {
                result.append(i - p.count + 1)
            }
        }

        return result
    }
}