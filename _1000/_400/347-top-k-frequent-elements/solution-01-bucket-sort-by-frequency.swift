// Approach: bucket sort by frequecy
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        var maxCount = 1
        
        for num in nums {
            dict[num, default: 0] += 1
            maxCount = max(maxCount, dict[num]!)
        }

        var buckets = Array(repeating: [Int](), count: maxCount + 1)
        for (num, count) in dict {
            buckets[count].append(num)
        }

        var result = [Int]()
        for i in stride(from: buckets.count - 1, to: -1, by: -1) {
            guard !buckets[i].isEmpty else {
                continue
            }

            let count = min(k - result.count, buckets[i].count)
            result.append(contentsOf: buckets[i].prefix(count))

            if result.count == k {
                break
            }
        }

        return result
    }
}