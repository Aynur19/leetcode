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
        guard let head, let next = head.next else {
            return true
        }

        return checkPalindrome(head: head, curr: next).result
    }

    func checkPalindrome(head: ListNode, curr: ListNode) -> (nextFromHead: ListNode, result: Bool) {
        guard let next = curr.next else {
            let nextFromHead = head.next!

            return (nextFromHead, head.val == curr.val)
        }

        let checkResult = checkPalindrome(head: head, curr: next)
        guard checkResult.result else {
            return checkResult
        }

        guard checkResult.nextFromHead.val == curr.val else {
            return (checkResult.nextFromHead, false)
        }

        return (checkResult.nextFromHead.next!, true)
    }
}