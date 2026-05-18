// Approach: Hash Table + Merge Intervals
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        var dict = [Character: [Int]]()
        var index = 0

        for char in s {
            if let indices = dict[char] {
                dict[char] = [indices[0], index]
            } else {
                dict[char] = [index, index]
            }

            index += 1
        }

        return dict
            .map { $0.value }                                                       // O(k) \ O(k)
            .sorted { $0[0] < $1[0] }                                               // O(k log k) \ O(k)
            .reduce(into: [[Int]]()) { result, indices in                           // O(k) \ O(m) 
                if let last = result.last,
                   last[1] >= indices[0] 
                {
                    result[result.count - 1] = [last[0], max(last[1], indices[1])]

                } else {
                    result.append(indices)
                }
            }
            .map { $0[1] - $0[0] + 1 }                                              // O(m)
    }
}