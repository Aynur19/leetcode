// Approach: Hash Table + Sorting
// Time complexity: O(n + m log m)
// Space complexity: O(m)
class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String: Int]()  

        for word in words {
            dict[word, default: 0] += 1
        }

        let result = dict
            .sorted { $0.value > $1.value || $0.value == $1.value && $0.key < $1.key }
            .map { $0.key }
            
        return Array(result.prefix(k))
    }
}