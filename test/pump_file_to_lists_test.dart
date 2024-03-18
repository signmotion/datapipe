import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final file = File('./test/data/eye.webp');

  group('with extension on list', () {
    test('file to List<int>', () {
      final r = [file, const <int>[]].pump<List<int>>();
      expect(r, isNotNull);
      expect(r.length, 183358);

      r.saveAsString('$testOutputPath/list/file_to_list_int.txt');
    }, tags: ['current']);
  });

  group('with `|` delimiter', () {
    test('file to List<int>', () {
      final r = (D(file) | const D(<int>[])).cast<List<int>>();
      expect(r.data.length, 183358);

      r.saveAsString('$testOutputPath/delimiter/file_to_list_int.txt');
    });

    test('file to Dart const List<int>', () {
      final r =
          (D(file) | const D(DartConstListInt(''))).cast<DartConstListInt>();
      expect(r.data.data, startsWith('const data = <int>['));

      r.saveAsString(
          '$testOutputPath/delimiter/file_to_dart_const_list_int.txt');
    });

    test('file to Dart const List<int> with options', () {
      final r = (D(file) |
              const D(
                DartConstListInt(''),
                options: DartConstListIntOptions(name: 'image'),
              ))
          .cast<DartConstListInt>();
      expect(r.data.data, startsWith('const image = <int>['));

      r.saveAsString(
          '$testOutputPath/delimiter/file_to_dart_const_list_int_with_options.txt');
    });
  });
}
