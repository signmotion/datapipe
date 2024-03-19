// ignore_for_file: avoid_print

import 'dart:io';

import 'package:data_pipe/data_pipe.dart';

void main() {
  // pump to List<int>
  final file = File('./example/1.webp');
  final r = (D(file) | const D(<int>[]));
  print(r.data);
}
