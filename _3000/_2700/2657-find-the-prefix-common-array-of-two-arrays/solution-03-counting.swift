// Approach: Counting
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        let n = A.count
        var seen = Array(repeating: 0, count: n + 1)

        var common = 0
        var result = Array(repeating: 0, count: n)

        for i in 0..<n {
            seen[A[i]] += 1
            if seen[A[i]] == 2 {
                common += 1
            }

            seen[B[i]] += 1
            if seen[B[i]] == 2 {
                common += 1
            }

            result[i] = common
        }

        return result
    }
}