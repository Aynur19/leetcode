// Approach: Greedy Algorithm
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        let chars = Array(s)
        var lastOccurrence = [Character: Int]()
        
        // Запоминаем последнее вхождение каждого символа
        for (i, char) in chars.enumerated() {
            lastOccurrence[char] = i
        }
        
        var result = [Int]()
        var start = 0
        var end = 0
        
        for (i, char) in chars.enumerated() {
            end = max(end, lastOccurrence[char] ?? 0)
            
            if i == end {
                result.append(end - start + 1)
                start = i + 1
            }
        }
        
        return result
    }
}