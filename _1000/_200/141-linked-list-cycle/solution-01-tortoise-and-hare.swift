/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

// Approach: Floyd’s Cycle Detection Algorithm (Tortoise and Hare)
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var ptr1 = head
        var ptr2 = head?.next

        while ptr1 != nil, ptr2 != nil {
            if ptr1! === ptr2! {
                return true
            }

            ptr1 = ptr1?.next
            ptr2 = ptr2?.next?.next
        }

        return false
    }
}