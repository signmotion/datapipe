import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final directory = Directory('./test/data/images');

  test('directory to Dart const List<(tags, bytes)>', () {
    final r = (D(directory) | const D(DartConstTagsBytes()))
        .cast<DartConstTagsBytes>();
    expect(
      r.data.data,
      startsWith('const data = <(List<String>, List<int>)>['),
    );
    expect(r.data.data, contains('bg'));

    r.saveAsString('$testOutputPath/directory_to_dart_const_tags_bytes.dart');
  });
}
