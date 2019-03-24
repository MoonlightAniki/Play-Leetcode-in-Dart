// 917. Reverse Only Letters
// https://leetcode.com/problems/reverse-only-letters/
/*
Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.

Example 1:
Input: "ab-cd"
Output: "dc-ba"

Example 2:
Input: "a-bC-dEf-ghIj"
Output: "j-Ih-gfE-dCba"

Example 3:
Input: "Test1ng-Leet=code-Q!"
Output: "Qedo1ct-eeLg=ntse-T!"

Note:
S.length <= 100
33 <= S[i].ASCIIcode <= 122
S doesn't contain \ or "
 */

String reverseOnlyLetters(String S) {
  List<String> arr = S.split('');
  int i = 0, j = arr.length - 1;
  while (true) {
    while (i < j && !isLetter(arr[i])) {
      ++i;
    }
    while (j > i && !isLetter(arr[j])) {
      --j;
    }
    if (i >= j) {
      break;
    }
    if (arr[i] != arr[j]) {
      String temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
    ++i;
    --j;
  }
  return arr.join();
}

bool isLetter(String s) {
  int code = s.codeUnitAt(0);
  return (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
}

void main() {
  print(reverseOnlyLetters('ab-cd') == 'dc-ba');
  print(reverseOnlyLetters('a-bC-dEf-ghIj') == 'j-Ih-gfE-dCba');
  print(reverseOnlyLetters('Test1ng-Leet=code-Q!') == 'Qedo1ct-eeLg=ntse-T!');
}
