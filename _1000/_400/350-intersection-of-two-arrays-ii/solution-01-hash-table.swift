// Approach: Hash Table
// Time complexity: O(n + m)
// Space complexity: O(n + m)
class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let freq1 = nums1.reduce(into: [Int: Int]()) { dict, num in
            dict[num, default: 0] += 1
        }

        let freq2 = nums2.reduce(into: [Int: Int]()) { dict, num in
            dict[num, default: 0] += 1
        }

        var result = [Int]()
        for (num, count) in freq1 {
            let count = min(freq2[num] ?? 0, count)

            if count > 1 {
                result.append(contentsOf: Array(repeating: num, count: count))
            } else if count == 1 {
                result.append(num)
            }
        }

        return result
    }
}