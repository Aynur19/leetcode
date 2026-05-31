// Approach: Two Pointers
// Time complexity: O(n + m)
// Space complexity: O(1)
class Solution {
    func intervalIntersection(_ firstList: [[Int]], _ secondList: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        var (ptr1, ptr2) = (0, 0)

        while ptr1 < firstList.count, ptr2 < secondList.count {
            if firstList[ptr1][1] < secondList[ptr2][0] {
                ptr1 += 1
                continue
            }

            if firstList[ptr1][0] > secondList[ptr2][1] {
                ptr2 += 1
                continue
            } 

            let a = min(firstList[ptr1][1], secondList[ptr2][1])
            let b = max(firstList[ptr1][0], secondList[ptr2][0])

            result.append([b, a])

            if firstList[ptr1][1] < secondList[ptr2][1] {
                ptr1 += 1
            } else if firstList[ptr1][1] > secondList[ptr2][1] {
                ptr2 += 1
            } else {
                ptr1 += 1
                ptr2 += 1
            }
        }

        return result
    }
}