// Approach: Two Pointers
// Time complexity: O(n + m)
// Space complexity: O(1)
class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var (ptr1, ptr2, k) = (m - 1, n - 1, m + n - 1)

        while ptr1 >= 0, ptr2 >= 0 {
            if nums1[ptr1] > nums2[ptr2] {
                nums1[k] = nums1[ptr1]
                ptr1 -= 1
            } else {
                nums1[k] = nums2[ptr2]
                ptr2 -= 1
            }

            k -= 1
        }

        while ptr2 >= 0 {
            nums1[k] = nums2[ptr2]
            ptr2 -= 1
            k -= 1
        }
    }
}