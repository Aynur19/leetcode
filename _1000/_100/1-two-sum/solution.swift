
// Approach: Hash Table
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()

        for idx in nums.indices {
            let num = nums[idx]
            let diff = target - num

            if let index = dict[diff] {
                return [idx, index]
            }

            dict[num] = idx
        }

        return []
    }
}