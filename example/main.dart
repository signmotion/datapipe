// ignore_for_file: avoid_print, unnecessary_statements

import 'dart:io';

import 'package:data_pipe/data_pipe.dart';

void main() {
  // pump to List<int>
  {
    final file = File('./example/1.webp');
    final r = O(file) | const O(<int>[]);
    print(r);
  }

  // pump to File with List<int>
  {
    final input = File('./example/1.webp');
    final output = File('./_output/1.json');
    O(input) | const O(<int>[]) | O(output);
    // look at [output] file
  }
}
