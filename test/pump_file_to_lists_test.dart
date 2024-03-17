import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final file = File('./test/data/eye.webp');

  test('binary file to List<int>', () {
    final r = (D(file) | const D(<int>[])).cast<List<int>>();
    expect(r.data.length, 183358);

    r.saveAsString('$testOutputPath/binary_file_to_list_int.txt');
  });

  test('binary file to Dart const List<int>', () {
    final r =
        (D(file) | const D(DartConstListInt(''))).cast<DartConstListInt>();
    expect(r.data.data, startsWith('const data = <int>['));

    r.saveAsString('$testOutputPath/binary_file_to_dart_const_list_int.txt');
  });
}
