// Approach: Bit manipulation
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var maskA: UInt64 = 0
        var maskB: UInt64 = 0

        var result = [Int]()

        for i in 0..<A.count {
            maskA |= 1 << A[i]
            maskB |= 1 << B[i]

            let common = maskA & maskB
            result.append(common.nonzeroBitCount)
        }

        return result
    }
}