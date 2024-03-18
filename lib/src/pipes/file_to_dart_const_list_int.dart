part of '../../data_pipe.dart';

class FileToDartConstListIntPipe
    extends Pipe<File, DartConstListInt, DartConstListIntOptions> {
  const FileToDartConstListIntPipe(
    super.a,
    super.b, {
    super.options = const DartConstListIntOptions(),
  });

  @override
  DartConstListInt run() {
    final bytes = a.readAsBytesSync().toList();

    return DartConstListInt('const ${options.name} = <int>[$bytes];');
  }
}

class DartConstListInt extends OwnTypeString {
  const DartConstListInt(super.data);
}

class DartConstListIntOptions extends DataOptions {
  const DartConstListIntOptions({this.name = 'data'});

  /// A variable name into template.
  final String name;
}
