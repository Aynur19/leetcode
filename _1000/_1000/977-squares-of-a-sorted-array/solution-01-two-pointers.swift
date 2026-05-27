
class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        guard nums.count > 1 else {
            return [nums[0] * nums[0]]
        }

        var result = Array(repeating: 0, count: nums.count)

        var left = 0
        for i in 1..<nums.count {
            if abs(nums[left]) < abs(nums[i]) {
                break
            }

            left = i
        }        

        var right = left + 1
        var index = 0
        while left >= 0, right < nums.count {
            if abs(nums[left]) <= abs(nums[right]) {
                setSquare(result: &result, index: &index, num: nums[left])
                left -= 1
            } else {
                setSquare(result: &result, index: &index, num: nums[right])
                right += 1
            }
        }

        while left >= 0 {
            setSquare(result: &result, index: &index, num: nums[left])
            left -= 1
        }  

        while right < nums.count {
            setSquare(result: &result, index: &index, num: nums[right])
            right += 1
        }  

        return result
    }

    private func setSquare(result: inout [Int], index: inout Int, num: Int) {
        result[index] = num * num
        index += 1
    }
}