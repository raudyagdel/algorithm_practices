import 'dart:convert';
import 'dart:io';

void main() {
  // Read Input File
  List<String> data = new LineSplitter().convert(new File('input').readAsStringSync());

  // Processing
  List<int> elfs = List();
  int calories = 0;
  data.forEach((n) => {
        if (n.isEmpty) {elfs.add(calories), calories = 0} else {calories += int.parse(n)}
      });
  elfs.sort((a, b) => b - a);
  // *
  print(elfs[0]);

  // **
  print(elfs[0] + elfs[1] + elfs[2]);
}
