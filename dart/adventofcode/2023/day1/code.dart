import 'dart:convert';
import 'dart:io';

// const
final regex = RegExp(r'^[0-9]+$');

final numbers = {
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
};

// eval
eval(String data) {
  return int.parse(data.split('').firstWhere((c) => regex.hasMatch(c))) * 10 + int.parse(data.split('').lastWhere((c) => regex.hasMatch(c)));
}

// eval 2
eval2(String data) {
  var low = data.length + 1, high = -1;
  num first = 0, last = 0;

  numbers.keys.forEach((value) {
    final clow = data.indexOf(value);
    final chigh = data.lastIndexOf(value);

    if (clow != -1 && low > clow) {
      low = clow;
      first = numbers[data.substring(low, low + value.length)]!;
    }

    if (chigh != -1 && high < chigh) {
      high = chigh;
      last = numbers[data.substring(high, high + value.length)]!;
    }
  });

  return first * 10 + last;
}

// *
p1(List<String> data) {
  num s = 0;
  data.forEach((w) => s += eval(w));
  return s;
}

// **
p2(List<String> data) {
  num s = 0;
  data.forEach((w) => s += eval2(w));
  return s;
}

void main() {
  // Read Input File
  List<String> data = new LineSplitter().convert(new File('input').readAsStringSync());

  // Solved
  num s = p1(data);
  num ss = p2(data);
  // *
  print(s);

  // **
  print(ss);
}
