// ignore_for_file: avoid_print, unnecessary_statements

import 'dart:io';

import 'package:data_pipe/data_pipe.dart';

void main() {
  // pump to List<int>
  {
    final file = File('./example/1.webp');
    final r = D(file) | const D(<int>[]);
    print(r);
  }

  // pump to File with List<int>
  {
    final input = File('./example/1.webp');
    final output = File('./_output/1.json');
    D(input) | const D(<int>[]) | D(output);
    // look at [output] file
  }
}
