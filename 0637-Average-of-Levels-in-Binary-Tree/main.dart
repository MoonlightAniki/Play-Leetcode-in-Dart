// 637. Average of Levels in Binary Tree
// https://leetcode.com/problems/average-of-levels-in-binary-tree/
/*
Given a non-empty binary tree, return the average value of the nodes on each level in the form of an array.
Example 1:
Input:
    3
   / \
  9  20
    /  \
   15   7
Output: [3, 14.5, 11]
Explanation:
The average value of nodes on level 0 is 3,  on level 1 is 14.5, and on level 2 is 11. Hence return [3, 14.5, 11].

Note:
The range of node's value is in the range of 32-bit signed integer.
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

List<double> averageOfLevels(TreeNode root) {
  List<double> res = [];
  if (root == null) {
    return res;
  }
  Queue<TreeNode> q = Queue<TreeNode>();
  q.addLast(root);
  while (q.isNotEmpty) {
    int length = q.length;
    int sum = 0;
    for (int i = 0; i < length; ++i) {
      TreeNode front = q.removeFirst();
      sum += front.val;
      if (front.left != null) {
        q.addLast(front.left);
      }
      if (front.right != null) {
        q.addLast(front.right);
      }
    }
    res.add(sum / length);
  }
  return res;
}

void main() {
  TreeNode root = TreeNode(3);
  root.left = TreeNode(9);
  root.right = TreeNode(20);
  root.right.left = TreeNode(15);
  root.right.right = TreeNode(7);

  List<double> res = averageOfLevels(root);
  print(res);
}
