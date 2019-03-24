// 206. Reverse Linked List
// https://leetcode.com/problems/reverse-linked-list/
/*
Reverse a singly linked list.

Example:
Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL

Follow up:
A linked list can be reversed either iteratively or recursively. Could you implement both?
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
    ListNode cur = this;
    while (cur != null) {
      res..write(cur.val)..write('->');
      cur = cur.next;
    }
    res.write('NULL');
    return res.toString();
  }
}

ListNode reverseList(ListNode head) {
  if (head == null) {
    return head;
  }
  ListNode dummyHead = ListNode(-1);
  while (head != null) {
    ListNode node = head;
    head = head.next;
    node.next = dummyHead.next;
    dummyHead.next = node;
  }
  return dummyHead.next;
}

void main() {
  ListNode head = ListNode.from([1, 2, 3, 4, 5]);
  print(head);
  print(reverseList(head));
}
