part of '../../data_pipe.dart';

/// Pumping files from [Directory] to `const data = <(tags, bytes)>[...]`.
Data<DartConstTagsBytes, DataOptions> pumpDirectoryToDartConstTagsBytes(
  Data<Directory, DataOptions> a,
  Data<DartConstTagsBytes, DataOptions> b,
) {
  final bo = b.options as DartConstListTagsIntOptions?;
  const defaultsOptions = DartConstListTagsIntOptions();
  final name = bo?.name ?? defaultsOptions.name;
  final fileExtension = bo?.fileExtension ?? defaultsOptions.fileExtension;

  final files = a.data
      .listSync(recursive: false)
      .whereType<File>()
      .where((entity) => fileExtension.isEmpty
          ? true
          : p.extension(entity.path) == '.$fileExtension')
      .toList();
  final l = <String>[];
  for (final file in files) {
    final tags = p.withoutExtension(p.basename(file.path)).split('_');
    final bytes = file.readAsBytesSync();
    l.add('(${jsonEncode(tags)}, ${jsonEncode(bytes)})');
  }

  return D(
    DartConstTagsBytes(
        'const $name = <(List<String>, List<int>)>[${l.join(',\n')}];'),
    options: b.options,
  );
}

class DartConstTagsBytes extends OwnTypeString {
  const DartConstTagsBytes([super.data = '']);
}

class DartConstListTagsIntOptions extends DataOptions {
  const DartConstListTagsIntOptions({
    this.name = 'data',
    this.fileExtension = '',
  });

  /// A variable name into template.
  final String name;

  /// An extension of files for processing a directory.
  final String fileExtension;
}
