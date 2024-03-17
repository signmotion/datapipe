part of '../../data_pipe.dart';

/// Pumping [File] to `const data = <int>[...]`.
Data<DartConstListInt, DataOptions> pumpFileToDartConstListInt(
  Data<File, DataOptions> a,
  Data<DartConstListInt, DataOptions> b,
) {
  final r = Data(a.data.readAsBytesSync().toList(), options: b.options);

  return D(
    DartConstListInt('const data = <int>[${r.data}];'),
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
