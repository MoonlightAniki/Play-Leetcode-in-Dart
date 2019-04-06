// 345. Reverse Vowels of a String
// https://leetcode.com/problems/reverse-vowels-of-a-string/
/*
Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:
Input: "hello"
Output: "holle"

Example 2:
Input: "leetcode"
Output: "leotcede"

Note:
The vowels does not include the letter "y".
 */
String reverseVowels(String s) {
  if (s == null || s.isEmpty) {
    return s;
  }
  List<String> arr = s.split('');
  int i = 0;
  int j = arr.length - 1;
  while (true) {
    if (i < j && !isVowel(arr[i])) {
      ++i;
    }
    if (j > i && !isVowel(arr[j])) {
      --j;
    }
    if (i >= j) {
      break;
    }
    String temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    ++i;
    --j;
  }
  return arr.join('');
}

bool isVowel(String s) {
  return s == 'a' ||
      s == 'e' ||
      s == 'i' ||
      s == 'o' ||
      s == 'u' ||
      s == 'A' ||
      s == 'E' ||
      s == 'I' ||
      s == 'O' ||
      s == 'U';
}

void main() {
  print(reverseVowels('hello'));
  print(reverseVowels('leetcode'));
}
