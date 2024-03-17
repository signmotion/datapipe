import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  test('binary file to List<int>', () {
    final file = File('./test/data/eye.webp');
    final bytes = <int>[];
    final r = (D(file) | D(bytes)).cast<List<int>>();
    expect(r.data.length, 183358);

    r.saveToFileAsString('$testOutputPath/binary_file_to_list_int.txt');
  });
}
