part of '../../datapipe.dart';

/// Pumping files from [Directory] to [String]
/// `const data = <(tags, bytes)>[...]` with header, footer and comments.
/// See [DartConstTagsBytesOptions].
Pipe<DartConstTagsBytes, PipeOptions> pumpDirectoryToDartConstTagsBytes(
  Pipe<Directory, PipeOptions> a,
  Pipe<DartConstTagsBytes, PipeOptions> b,
) {
  final bo = b.options as DartConstTagsBytesOptions?;
  const defaultsOptions = DartConstTagsBytesOptions();
  final header = bo?.header ?? defaultsOptions.header;
  final footer = bo?.footer ?? defaultsOptions.footer;
  final name = bo?.name ?? defaultsOptions.name;
  final fileExtension = bo?.fileExtension ?? defaultsOptions.fileExtension;
  final comment = bo?.comment ?? defaultsOptions.comment;

  final l = <String>[];
  if (header.isNotEmpty) {
    l.add('$header$newline$newline');
  }
  l.add('const $name = <(List<String>, List<int>)>[');

  final files = a.data.listSync(recursive: false).whereType<File>().where(
      (entity) => fileExtension.isEmpty
          ? true
          : p.extension(entity.path) == '.$fileExtension');
  for (final file in files) {
    final name = p.withoutExtension(p.basename(file.path));
    l.add(newline);
    if (comment) {
      l.add('// ${file.path}$newline');
    }
    final tags = name.split('_');
    final bytes = file.readAsBytesSync();
    l.add('(${jsonEncode(tags)}, ${jsonEncode(bytes)}),$newline');
  }

  l.add('];$newline');
  if (footer.isNotEmpty) {
    l.add('$newline$footer$newline');
  }

  return O(DartConstTagsBytes(l.join()), options: b.options);
}

class DartConstTagsBytes extends OwnTypeString {
  const DartConstTagsBytes([super.data = '']);
}

class DartConstTagsBytesOptions extends PipeOptions {
  const DartConstTagsBytesOptions({
    this.header = '// ! AUTO GENERATED FILE ! //',
    this.footer = '// ! AUTO GENERATED FILE ! //',
    this.name = 'data',
    this.fileExtension = '',
    this.comment = true,
  });

  /// A header for template.
  final String header;

  /// A footer for template.
  final String footer;

  /// A variable name into template.
  final String name;

  /// An extension of files for processing a directory.
  final String fileExtension;

  /// Adds a comment line before each record.
  final bool comment;
}
