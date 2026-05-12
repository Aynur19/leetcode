// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        let s = Array(s)
        let t = Array(t)
        let m = s.count
        let n = t.count

        if abs(m - n) > 1 {
            return false
        }

        var i = 0
        var j = 0
        var usedEdit = false

        while i < m && j < n {
            if s[i] == t[j] {
                i += 1
                j += 1
                continue
            }

            if usedEdit {
                return false
            }

            usedEdit = true

            if m > n {
                i += 1  
            } else if m < n {
                j += 1    
            } else {
                i += 1
                j += 1
            }
        }

        return usedEdit || abs(m - n) == 1
    }
}