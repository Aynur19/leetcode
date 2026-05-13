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

// Approach: Reverse, Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard let head = head, head.next != nil else {
            return true
        }

        // Find middle
        var slow: ListNode? = head
        var fast: ListNode? = head

        while fast?.next != nil && fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // Reverse second half
        var secondHalf = reverse(slow?.next)

        // Compare
        var p1: ListNode? = head
        var p2: ListNode? = secondHalf

        while p2 != nil {
            if p1!.val != p2!.val {
                return false
            }

            p1 = p1?.next
            p2 = p2?.next
        }

        return true
    }

    private func reverse(_ head: ListNode?) -> ListNode? {
        var prev: ListNode?
        var curr = head

        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }

        return prev
    }
}