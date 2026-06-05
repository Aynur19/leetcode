// Approach: Two Pointers
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        let n = matrix.count

        for index in matrix.indices {
            result += matrix[index][index]

            let newIndex = n - 1 - index
            if newIndex != index {
                result += matrix[index][newIndex]
            }
        } 


        return result
    }
}