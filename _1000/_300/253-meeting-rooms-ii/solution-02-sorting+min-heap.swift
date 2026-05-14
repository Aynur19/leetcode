// Approach: Sorting, Min Heap
// Time complexity: O(n log n)
// Space complexity: O(n)
class Solution {
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        guard !intervals.isEmpty else {
            return 0
        }

        let intervals = intervals.sorted { $0[0] < $1[0] }

        var heap = MinHeap<Int>()
        heap.insert(intervals[0][1])

        for i in 1..<intervals.count {
            let start = intervals[i][0]
            let end = intervals[i][1]

            if let earliest = heap.peek(), earliest <= start {
                heap.remove()
            }

            heap.insert(end)
        }

        return heap.count
    }
}