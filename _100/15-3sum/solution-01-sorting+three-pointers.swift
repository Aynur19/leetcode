// Approach: Sorting, Three Pointers
// Time complexity: O(n^2)
// Space complexity: O(n)
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        let n = nums.count
        var result = [[Int]]()

        for index in 0..<(n-2) {
            let num1 = nums[index]
            if nums[index] > 0 { break }
            if index > 0 && nums[index] == nums[index - 1] { continue }

            var left = index + 1
            var right = n - 1
            
            while left < right {
                let num2 = nums[left]
                let num3 = nums[right]
                let sum = num1 + num2 + num3

                if sum == 0 {
                    result.append([num1, num2, num3])

                    while left < right && num2 == nums[left + 1] {
                        left += 1
                    }

                    while left < right && num3 == nums[right - 1] {
                        right -= 1
                    }

                    left += 1
                    right -= 1
                } else if sum < 0 {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }

        return result
    }
}