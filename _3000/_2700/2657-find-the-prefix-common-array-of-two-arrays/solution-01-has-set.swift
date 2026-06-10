// Approach: Hash Set
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var result = Array(repeating: 0, count: A.count)
        var setA = Set<Int>()
        var setB = Set<Int>()
        var sum = 0

        for i in A.indices {
            let a = A[i]
            let b = B[i]

            if a == b {
                sum += 1
            } else {
                if setA.contains(b) {
                    sum += 1
                }

                if setB.contains(a) {
                    sum += 1
                }
            }

            _ = setA.insert(a)
            _ = setB.insert(b)

            result[i] = sum
        }

        return result
    }
}