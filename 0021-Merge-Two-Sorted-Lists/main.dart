// 21. Merge Two Sorted Lists
// https://leetcode.com/problems/merge-two-sorted-lists/
/*
Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
 */

//Definition for singly-linked list.
class ListNode {
  int val;
  ListNode next;

  ListNode(int x) {
    val = x;
  }

  ListNode.from(List<int> nums) {
    if (nums == null || nums.isEmpty) {
      return;
    }
    this.val = nums[0];
    ListNode cur = this;
    for (int i = 1; i < nums.length; ++i) {
      cur.next = ListNode(nums[i]);
      cur = cur.next;
    }
  }

  @override
  String toString() {
    StringBuffer res = StringBuffer();
    for (ListNode cur = this; cur != null; cur = cur.next) {
      res.write('${cur.val}->');
    }
    res.write('NULL');
    return res.toString();
  }
}

ListNode mergeTwoLists(ListNode l1, ListNode l2) {
  if (l1 == null) {
    return l2;
  }
  if (l2 == null) {
    return l1;
  }
  ListNode dummyHead = ListNode(-1);
  ListNode prev = dummyHead;
  while (l1 != null && l2 != null) {
    ListNode node;
    if (l1.val <= l2.val) {
      node = l1;
      l1 = node.next;
      node.next = null;
    } else {
      node = l2;
      l2 = node.next;
      node.next = null;
    }
    prev.next = node;
    prev = node;
  }
  if (l1 != null) {
    prev.next = l1;
  }
  if (l2 != null) {
    prev.next = l2;
  }
  return dummyHead.next;
}

void main() {
  print(mergeTwoLists(ListNode.from([1, 2, 4]), ListNode.from([1, 3, 4])));
}
