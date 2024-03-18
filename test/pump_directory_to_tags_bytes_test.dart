import 'dart:io';

import 'package:data_pipe/data_pipe.dart';
import 'package:test/test.dart';

import 'helpers/utils.dart';

void main() {
  final directory = Directory('./test/data/images');

  test('directory to Dart const List<(tags, bytes)>', () {
    final r = (D(directory) | const D(DartConstTagsBytes()))
        .cast<DartConstTagsBytes>();
    r.saveAsString('$testOutputPath/directory_to_dart_const_tags_bytes.dart');

    expect(
      r.data.data,
      contains('const data = <(List<String>, List<int>)>['),
    );
    for (final tag in [
      'autumn',
      'bg',
      'forest',
      'flower',
      'galaxy',
      'house',
      'lake',
      'mountain',
      'people',
      'river',
      'tree',
      'star',
      'sun',
      'water',
      'winter',
    ]) {
      expect(r.data.data, contains(tag));
    }
  });
}
