part of '../../data_pipe.dart';

/// Pumping [File] to `const data = <int>[...]`.
Data<DartConstListInt, DataOptions> pumpFileToDartConstListInt(
  Data<File, DataOptions> a,
  Data<DartConstListInt, DataOptions> b,
) {
  final bytes = a.data.readAsBytesSync().toList();

  final bo = b.options as DartConstListIntOptions?;
  final name = bo?.name ?? const DartConstListIntOptions().name;

  return D(
    DartConstListInt('const $name = <int>[$bytes];'),
    options: b.options,
  );
}

class DartConstListInt extends OwnTypeString {
  const DartConstListInt(super.data);
}

abstract class OwnTypeString extends OwnType<String> {
  const OwnTypeString(super.data);
}

abstract class OwnType<T> {
  const OwnType(this.data);

  final T data;
}

class DartConstListIntOptions extends DataOptions {
  const DartConstListIntOptions({this.name = 'data'});

  /// A variable name into template.
  final String name;
}
