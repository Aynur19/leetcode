// Approach: Hash Table + Set
// Time complexity: O(n)
// Space complexity: O(k)
class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let chars = Array(s)
        var dict = [Character: Int]()
        var results = Set<Int>()
        
        for idx in stride(from: chars.count - 1, to: -1, by: -1) {
            let char = chars[idx]
            
            if let index = dict[char] {
                _ = results.remove(index)
            } else {
                dict[char] = idx
                _ = results.insert(idx)
            }
        }

        return results.min() ?? -1
    }
}