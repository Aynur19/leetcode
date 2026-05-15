/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

// Approach: Binary Search
// Time complexity: O(log n)
// Space complexity: O(1)
class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var (left, right) = (1, n)

        while left < right {
            let mid = left + (right - left) / 2
            let result = guess(mid)

            if result == 0 {
                return mid
            } else if result < 0 {
                right = mid
            } else {
                left = mid + 1
            }
        } 

        return left
    }
}