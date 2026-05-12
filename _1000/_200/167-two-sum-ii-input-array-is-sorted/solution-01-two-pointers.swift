// Approach: Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while true {
            let sum = numbers[left] + numbers[right]
            if sum == target { break }
            
            if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return [left + 1, right + 1]
    }
}