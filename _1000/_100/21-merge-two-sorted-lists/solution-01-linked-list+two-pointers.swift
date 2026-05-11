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

// Approach: Linked List, Two Pointers
// Time complexity: O(n + m)
// Space complexity: O(1)
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        var tmp: ListNode? = result
      
        var list1 = list1
        var list2 = list2

        while list1 != nil, list2 != nil {
            if list1!.val >= list2!.val {
                tmp?.next = list2
                list2 = list2?.next
            } else {
                tmp?.next = list1
                list1 = list1?.next
            }

            tmp = tmp?.next
        }

        tmp?.next = list1 ?? list2

        return result.next
    }
}