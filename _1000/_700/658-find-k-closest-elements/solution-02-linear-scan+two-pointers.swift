// Approach: Linear Scan + Two Pointers
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        var diffs = arr
        var minDiff = Int.max
        var index = -1 

        for i in diffs.indices {
            diffs[i] = abs(arr[i] - x)
            
            if minDiff > diffs[i] {
                minDiff = diffs[i]
                index = i
            } 
        }

        var (left, right) = (index, index)
        while right + 1 - left < k {
            let prev = left - 1
            let next = right + 1

            guard prev >= 0 else {
                right = next
                continue
            }

            guard next < arr.count else {
                left = prev
                continue
            }

            if diffs[prev] <= diffs[next] {
                left = prev
            } else {
                right = next
            }
        }

        return Array(arr[left...right])
    }
}