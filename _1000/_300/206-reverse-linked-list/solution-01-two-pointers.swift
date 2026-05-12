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

// Approach: Linked List, Two Pointer
// Time complexity: O(n)
// Space complexity: O(1)
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var left = head
        var right = left?.next
        left?.next = nil

        while right != nil {
            let next = right?.next
            right?.next = left
            
            left = right
            right = next
        }

        return left
    }
}