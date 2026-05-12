// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        let charsS = Array(s)
        let charsT = Array(t)

        guard charsS.count == charsT.count else {
            return false
        }

        var dictST = [Character: Character]()
        var dictTS = [Character: Character]()

        for i in charsS.indices {
            let charS = charsS[i]
            let charT = charsT[i]

            if let char = dictST[charS] {
                if char != charT {
                    return false
                }
            } else {
                dictST[charS] = charT 
            }

            if let char = dictTS[charT] {
                if char != charS {
                    return false
                }
            } else {
                dictTS[charT] = charS 
            }
        }

        return true
    }
}