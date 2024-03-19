part of '../../data_pipe.dart';

/// Pumping [File] to [String]
/// `const data = <int>[...]`.
Data<DartConstListInt, DataOptions> pumpFileToDartConstListInt(
  Data<File, DataOptions> a,
  Data<DartConstListInt, DataOptions> b,
) {
  final bytes = a.data.readAsBytesSync();
  final sbytes = bytes.join(',');

  final bo = b.options as DartConstListIntOptions?;
  final name = bo?.name ?? const DartConstListIntOptions().name;

  return O(
    DartConstListInt('const $name = <int>[$sbytes];'),
    options: b.options,
  );
}

class DartConstListInt extends OwnTypeString {
  const DartConstListInt([super.data = '']);
}

class DartConstListIntOptions extends DataOptions {
  const DartConstListIntOptions({this.name = 'data'});

  /// A variable name into template.
  final String name;
}
