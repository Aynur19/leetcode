/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

// Approach: Stack, Two Pointer
// Time complexity: O(n)
// Space complexity: O(n)
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard var tmp = head else {
            return true
        }

        var values = [tmp.val]
        while let next = tmp.next {
            values.append(next.val)
            tmp = next
        }

        var (left, right) = (0, values.count - 1)
        while left < right {
            if values[left] != values[right] {
                return false
            }

            left += 1
            right -= 1
        }

        return true
    }
}