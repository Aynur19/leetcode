// Approach: Array
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxTotalValue(_ nums: [Int], _ k: Int) -> Int {
        var (minN, maxN) = (nums[0], nums[0])

        for num in nums {
            minN = min(minN, num)
            maxN = max(maxN, num)
        }

        return (maxN - minN) * k
    }
}