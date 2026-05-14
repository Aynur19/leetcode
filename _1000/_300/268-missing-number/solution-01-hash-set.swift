// Approach: Hash Set
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let set = Set(nums)

        for num in 0...set.count {
            if !set.contains(num) {
                return num
            }
        }

        return -1
    }
}