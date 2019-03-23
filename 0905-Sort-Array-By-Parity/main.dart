// 905. Sort Array By Parity
// https://leetcode.com/problems/sort-array-by-parity/
/*
Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
You may return any answer array that satisfies this condition.

Example 1:
Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

Note:
1 <= A.length <= 5000
0 <= A[i] <= 5000
 */

List<int> sortArrayByParity(List<int> A) {
  if (A == null) {
    return A;
  }
  int i = 0;
  int j = A.length - 1;
  while (true) {
    while (i < j && A[i].isEven) {
      ++i;
    }
    while (j > i && A[j].isOdd) {
      --j;
    }
    if (i >= j) {
      break;
    }
    _swap(A, i, j);
    ++i;
    --j;
  }
  return A;
}

void _swap(List<int> list, int x, int y) {
  int temp = list[x];
  list[x] = list[y];
  list[y] = temp;
}

void main() {
  print(sortArrayByParity([3, 1, 2, 4]));
  print(sortArrayByParity([3, 2, 1, 4]));
  print(sortArrayByParity([]));
  print(sortArrayByParity([1]));
  print(sortArrayByParity([2]));
}
