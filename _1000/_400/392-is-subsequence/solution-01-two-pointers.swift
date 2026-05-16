// Approach: Two pointers
// Time complexity: O(|t|)
// Space complexity: O(|s| + |t|)
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard s.count <= t.count else {
            return false
        }

        let charsS = Array(s)
        let charsT = Array(t)

        var (ptrS, ptrT) = (0, 0)

        while ptrS < charsS.count, ptrT < charsT.count {
            if charsT.count - ptrT < charsS.count - ptrS {
                return false
            }

            if charsS[ptrS] == charsT[ptrT] {
                ptrS += 1
            }

            ptrT += 1
        }

        return ptrS == charsS.count
    }
}