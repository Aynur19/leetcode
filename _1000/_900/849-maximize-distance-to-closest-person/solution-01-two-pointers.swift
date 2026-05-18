// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var result = 0
        var (left, right) = (0, 0)
        
        while right < seats.count {
            if seats[right] != 0 {
                if seats[left] == 0 {
                    result = max(result, right - left)
                } else {
                    result = max(result, (right - left) / 2)
                }
                left = right
            }
            
            right += 1
        }

        return max(result, right - 1 - left)
    }
}