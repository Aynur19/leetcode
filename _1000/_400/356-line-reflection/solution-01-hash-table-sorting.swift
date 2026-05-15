// Approach: Hash Table, Sorting
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func isReflected(_ points: [[Int]]) -> Bool {
        guard points.count > 1 else {
            return true
        }

        var buckets = [Int: [Int]]()
        for point in points {
            bucket[point[0], default: []].append(point[1])
        }

        guard buckets.count > 1 else {
            return true
        }

        let listX = buckets.keys.sorted { $0 < $1 }
        var (left, right) = (0, listX.count - 1)

        while left < right {
            guard listX[left + 1] - listX[left] == listX[right] - listX[right - 1] else {
                return false
            }

            guard buckets[listX[left]]!.count == buckets[listX[right]]!.count else {
                return false
            } 

            let sorted1 = buckets[listX[left]].sorted { $0 < $1 }
            let sorted2 = buckets[listX[right]].sorted { $0 < $1 }

            for i in sorted1.indices {
                guard sorted1[i] == sorted2[i] else {
                    return false
                }
            }

            left += 1
            right -= 1
        }

        return true
    }
}