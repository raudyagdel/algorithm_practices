/*
Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
*/

const toWord = {
  true: 'Yes',
  false: 'No',
};

extension Word on bool {
  String toWord() => this ? 'Yes' : 'No';
}

String bool_to_word_v1(bool boolean) => boolean ? 'Yes' : 'No';
String bool_to_word_v2(bool boolean) => boolean.toWord();
String? bool_to_word_v3(bool boolean) => toWord[boolean];

void main() {
  print(bool_to_word_v1(true));
  print(bool_to_word_v2(true));
  print(bool_to_word_v3(true));
  print(bool_to_word_v1(false));
  print(bool_to_word_v2(false));
  print(bool_to_word_v3(false));
}
