// Approach: Binary Search
// Time complexity: O(log (n*m))
// Space complexity: O(1)
class Solution {

    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {

        let rows = matrix.count
        let cols = matrix[0].count

        var left = 0
        var right = rows * cols - 1

        while left <= right {

            let mid = left + (right - left) / 2

            let row = mid / cols
            let col = mid % cols

            let value = matrix[row][col]

            if value == target {
                return true

            } else if value < target {
                left = mid + 1

            } else {
                right = mid - 1
            }
        }

        return false
    }
}