// Approach: Hash Table
// Time complexity: O(n + m)
// Space complexity: O(unique smaller array)
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var freq = [Int: Int]()

        for num in nums1 {
            freq[num, default: 0] += 1
        }

        var result = [Int]()

        for num in nums2 {
            if let count = freq[num], count > 0 {
                result.append(num)
                freq[num] = count - 1
            }
        }

        return result
    }
}