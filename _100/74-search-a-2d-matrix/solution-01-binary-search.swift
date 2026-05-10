// Approach: Binary Search
// Time complexity: O(log n*m))
// Space complexity: O(1)
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let row = searchRow(matrix: matrix, target: target)
        
        if row >= 0 {
            return searchTarget(matrix: matrix, target: target, row: row)
        } else {
           return false
        }
    }

    func searchRow(matrix: [[Int]], target: Int) -> Int {
        var (top, bottom) = (0, matrix.count - 1)

        while top <= bottom {
            let mid = top + (bottom - top) / 2

            if target >= matrix[mid][0], target <= matrix[mid][matrix[0].count - 1] {
                return mid
            } else if target > matrix[mid][0] {
                top = mid + 1
            } else {
                bottom = mid - 1
            }
        }

        return -1
    }

    func searchTarget(matrix: [[Int]], target: Int, row: Int) -> Bool {
        var (left, right) = (0, matrix[0].count - 1)

        while left <= right {
            let mid = left + (right - left) / 2

            if target == matrix[row][mid] {
                return true
            } else if target > matrix[row][mid] {
                left = mid + 1
            } else {
                right = mid - 1
            } 
        }

        return false
    }
}