import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final file = File('./test/data/images/bg_eye.webp');

  test('file to List<int>', () {
    final r = (O(file) | const O(<int>[])).cast<List<int>>();
    r.saveAsString('$testOutputPath/file_to_list_int.txt');

    expect(r.data.length, 49904);
  });

  test('file to Dart const List<int>', () {
    final r = (O(file) | const O(DartConstListInt())).cast<DartConstListInt>();
    r.saveAsString('$testOutputPath/file_to_dart_const_list_int.dart');

    expect(r.data.data, startsWith('const data = <int>['));
  });

  test('file to Dart const List<int> with options', () {
    final r = (O(file) |
            const O(
              DartConstListInt(),
              options: DartConstListIntOptions(name: 'image'),
            ))
        .cast<DartConstListInt>();
    r.saveAsString(
        '$testOutputPath/file_to_dart_const_list_int_with_options.dart');

    expect(r.data.data, startsWith('const image = <int>['));
  });
}
