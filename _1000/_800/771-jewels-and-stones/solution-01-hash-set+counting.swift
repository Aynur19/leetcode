// Approach: Counting
// Time complexity: O(n + m)
// Space complexity: O(n)
class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        let jewels = Set(jewels)

        return stones.reduce(into: 0) { result, stone in 
            result += jewels.contains(stone) ? 1 : 0
        }
    }
}