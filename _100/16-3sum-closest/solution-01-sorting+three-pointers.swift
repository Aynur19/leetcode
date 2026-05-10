// Approach: Sorting, Three Pointers
// Time complexity: O(n^2)
// Space complexity: O(n)
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        let n = nums.count
        var result = nums[0] + nums[1] + nums[2]

        for index in 0..<(n-2) {
            if index > 0 && nums[index] == nums[index - 1] { continue }

            var left = index + 1
            var right = n - 1
            
            while left < right {
                let sum = nums[index] + nums[left] + nums[right]

                if sum == target {
                    return sum
                } 

                if abs(target - sum) < abs(target - result) {
                    result = sum
                }
                
                if sum > target {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }

        return result
    }
}