// Approach: Brute Force + Early Exit
// Time complexity: O(n^3) - TLE
// Space complexity: O(n)
class Solution {
    func longestPalindrome(_ s: String) -> String {
        let chars = Array(s)
        var maxSize = chars.count
        var left = 0
        var right = maxSize - 1
            
        while left < right {
            if check(chars: chars, left: left, right: right) {
                return String(chars[left...right])
            }
                
            left += 1
            right += 1
                
            if right >= s.count {
                maxSize -= 1
                left = 0
                right = maxSize - 1
            }
        }
            
        return String(chars[0])
    }

    func check(chars: [Character], left: Int, right: Int) -> Bool {
        var left = left
        var right = right
            
        while left < right {
            if chars[left] != chars[right] { 
                return false 
            }
                
            left += 1
            right -= 1
        }
            
        return true
    }
}
