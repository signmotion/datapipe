// ignore_for_file: avoid_print, unnecessary_statements

import 'dart:io';

import 'package:datapipe/datapipe.dart';

void main() {
  // pump to List<int>
  {
    final file = File('./example/1.webp');
    final r = file.o | <int>[].o;
    print(r);
  }

  // pump to File with List<int>
  {
    final input = File('./example/1.webp');
    final output = File('./_output/1.json');
    input.o | <int>[].o | output.o;
    // look at [output] file
  }
}
