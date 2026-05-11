// Approach: Naive Substring Search
// Time complexity: O(n * m)
// Space complexity: O(n + 1)
class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var chars1 = Array(haystack)
        var chars2 = Array(needle)

        for ptr in chars1.indices {
            switch check(chars1: chars1, chars2: chars2, ptr: ptr) {
                case -1: return -1
                case 1: return ptr
                default: continue
            }
        }

        return -1
    }

    func check(chars1: [Character], chars2: [Character], ptr: Int) -> Int {
        guard ptr + chars2.count <= chars1.count else { 
            return -1
        }

        var ptr = ptr
        for char in chars2 {
            if char != chars1[ptr] {
                return 0
            }

            ptr += 1
        }

        return 1
    }
}