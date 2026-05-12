// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)

        var sToT = [Character: Character]()
        var tToS = [Character: Character]()

        for i in 0..<s.count {
            let c1 = s[i]
            let c2 = t[i]

            if let mapped = sToT[c1], mapped != c2 {
                return false
            }

            if let mapped = tToS[c2], mapped != c1 {
                return false
            }

            sToT[c1] = c2
            tToS[c2] = c1
        }

        return true
    }
}