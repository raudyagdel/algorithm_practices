import 'dart:convert';
import 'dart:io';

const scores_1 = {"A X": 4, "A Y": 8, "A Z": 3, "B X": 1, "B Y": 5, "B Z": 9, "C X": 7, "C Y": 2, "C Z": 6};

const scores_2 = {"A X": 3, "A Y": 4, "A Z": 8, "B X": 1, "B Y": 5, "B Z": 9, "C X": 2, "C Y": 6, "C Z": 7};

void main() {
  // Read Input File
  List<String> data = new LineSplitter().convert(new File('input').readAsStringSync());

  // Processing
  var total_1 = 0, total_2 = 0;
  data.forEach((match) => {total_1 += scores_1[match.trim()], total_2 += scores_2[match.trim()]});

  // *
  print(total_1);

  // **
  print(total_2);
}
