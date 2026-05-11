// Approach: HashMap + Sorted String Key
// Time complexity: O(n * k log k)
// Space complexity: O(n * k)
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [String: [String]]()

        for str in strs {
            dict[String(str.sorted()), default: []].append(str) 
        }

        return Array(dict.values)
    }
}