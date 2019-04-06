// 83. Remove Duplicates from Sorted List
// https://leetcode.com/problems/remove-duplicates-from-sorted-list/
/*
Given a sorted linked list, delete all duplicates such that each element appear only once.

Example 1:
Input: 1->1->2
Output: 1->2

Example 2:
Input: 1->1->2->3->3
Output: 1->2->3
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

ListNode deleteDuplicates(ListNode head) {
  if (head == null || head.next == null) {
    return head;
  }
  if (head.val == head.next.val) {
    return deleteDuplicates(head.next);
  } else {
    head.next = deleteDuplicates(head.next);
    return head;
  }
}

void main() {
  print(deleteDuplicates(ListNode.from([1, 1, 2])));
  print(deleteDuplicates(ListNode.from([1, 1, 2, 3, 3])));
}
