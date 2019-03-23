// 617. Merge Two Binary Trees
// https://leetcode.com/problems/merge-two-binary-trees/
/*
Given two binary trees and imagine that when you put one of them to cover the other, some nodes of the two trees are overlapped while the others are not.
You need to merge them into a new binary tree. The merge rule is that if two nodes overlap, then sum node values up as the new value of the merged node.
Otherwise, the NOT null node will be used as the node of new tree.

Example 1:
Input:
	Tree 1                     Tree 2
          1                         2
         / \                       / \
        3   2                     1   3
       /                           \   \
      5                             4   7
Output:
Merged tree:
	     3
	    / \
	   4   5
	  / \   \
	 5   4   7

Note: The merging process must start from the root nodes of both trees.
 */

//Definition for a binary tree node.
import 'dart:collection';

class TreeNode {
  int val;
  TreeNode left;
  TreeNode right;

  TreeNode(int x) {
    val = x;
  }
}

TreeNode mergeTrees(TreeNode t1, TreeNode t2) {
  if (t1 == null) return t2;
  if (t2 == null) return t1;
  t1.val += t2.val;
  t1.left = mergeTrees(t1.left, t2.left);
  t1.right = mergeTrees(t1.right, t2.right);
  return t1;
}

List<List<int>> levelOrderTraversal(TreeNode root) {
  List<List<int>> result = [];
  Queue<TreeNode> q = Queue<TreeNode>();
  if (root != null) {
    q.addLast(root);
  }
  while (q.isNotEmpty) {
    int length = q.length;
    List<int> level = [];
    for (int i = 0; i < length; ++i) {
      TreeNode front = q.removeFirst();
      level.add(front.val);
      if (front.left != null) {
        q.addLast(front.left);
      }
      if (front.right != null) {
        q.addLast(front.right);
      }
    }
    result.add(level);
  }
  return result;
}

void main() {
  TreeNode t1 = TreeNode(1);
  t1.left = TreeNode(3);
  t1.right = TreeNode(2);
  t1.left.left = TreeNode(5);

  TreeNode t2 = TreeNode(2);
  t2.left = TreeNode(1);
  t2.right = TreeNode(3);
  t2.left.right = TreeNode(4);
  t2.right.right = TreeNode(7);

  TreeNode mergedTree = mergeTrees(t1, t2);
  print(levelOrderTraversal(mergedTree));
}
