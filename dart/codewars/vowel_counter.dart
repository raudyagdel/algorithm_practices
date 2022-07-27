/*
Return the number (count) of vowels in the given string.

We will consider a, e, i, o, u as vowels for this Kata (but not y).

The input string will only consist of lower case letters and/or spaces.
 */

// int getCount(String inputStr) =>
//     inputStr.split('').where((s) => RegExp(r'([aeiou]+)').hasMatch(s)).length;

int getCount(String inputStr) => RegExp(r'[aeiou]').allMatches(inputStr).length;

void main() {
  String value = 'aeiou';
  print(getCount(value));
}
