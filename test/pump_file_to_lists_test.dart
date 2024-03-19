import 'dart:io';

import 'package:datapipe/datapipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final file = File('./test/data/images/bg_eye.webp');

  test('File to List<int>', () {
    final r = (file.o | <int>[].o).cast<List<int>>();
    r.saveAsString('$testOutputPath/file_to_list_int.json');

    expect(r.data.length, 49904);
  });

  test('File to DartConstListInt', () {
    final r = (file.o | const DartConstListInt().o).cast<DartConstListInt>();
    r.saveAsString('$testOutputPath/file_to_dart_const_list_int.dart');

    expect(r.data.data, startsWith('const data = <int>['));
  });

  test('File to DartConstListInt with options', () {
    final r = (file.o |
            const DartConstListInt()
                .oo(const DartConstListIntOptions(name: 'image')))
        .cast<DartConstListInt>();
    r.saveAsString(
        '$testOutputPath/file_to_dart_const_list_int_with_options.dart');

    expect(r.data.data, startsWith('const image = <int>['));
  });
}
