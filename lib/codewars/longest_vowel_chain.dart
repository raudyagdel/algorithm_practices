/*
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. 
Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, 
return the length of the longest vowel substring. Vowels are any of aeiou.
*/
const String vowels = 'aeiou';

int solve(String s) {
  int max = 0, count = 0;
  s.split('').forEach((c) => (() {
        if (vowels.contains(c)) {
          count++;
        } else {
          max = count > max ? count : max;
          count = 0;
        }
      }()));
  return max;
}

void main() {
  String value = 'codeoiwarriors';
  print(solve(value));
}
