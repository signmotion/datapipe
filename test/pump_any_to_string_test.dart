// ignore_for_file: avoid_dynamic_calls

import 'dart:io';

import 'package:datapipe/datapipe.dart';
import 'package:test/test.dart';

void main() {
  test('Directory to String', () {
    final r = Directory('./test/data').o | ''.o;
    expect(r.data, "Directory: './test/data'");
  });

  test('File to String', () {
    final r = File('./test/data/images/bg_eye.webp').o | ''.o;
    expect(r.data, "File: './test/data/images/bg_eye.webp'");
  });

  test('List<int> to String', () {
    const d = [1, 2, 3, 5, 8, 13];
    final r = d.o | ''.o;
    expect(r.data, '$d');
  });
}
