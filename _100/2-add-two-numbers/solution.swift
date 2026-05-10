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


// Approach: Linked List
// Time complexity: O(max(n1, n2))
// Space complexity: O(1)
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var result = ListNode()
        var tmp = result
        var value = 0

        while let val = ListNode.getSum(list1, list2) {
            value += val
            let next = ListNode(value % 10)
            tmp.next = next
            tmp = next

            list1 = list1?.next
            list2 = list2?.next

            value /= 10 
        }

        if value > 0 {
            tmp.next = ListNode(value)
        }

        return result.next
    }
}

extension ListNode {
    static func getSum(_ l1: ListNode?, _ l2: ListNode?) -> Int? {
        if let val1 = l1?.val {
            return val1 + (l2?.val ?? 0)
        } 

        return l2?.val
    }
}