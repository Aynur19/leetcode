// Approach: Greedy
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = prices[0]

        for i in 1..<prices.count {
            maxProfit = max(maxProfit, prices[i] - minPrice)
            minPrice = min(minPrice, prices[i])
        }

        return profit
    }
}