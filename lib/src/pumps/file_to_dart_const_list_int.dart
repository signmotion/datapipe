import 'dart:io';

import '../../datapipe.dart';

typedef _A = File;
typedef _B = DartConstListInt;

/// Pumping [File] to [String]
/// `const data = <int>[...]`.
/// See [DartConstListIntOptions].
class FileToDartConstListIntPump
    extends Pump<Pipe<_A, PipeOptions>, Pipe<_B, PipeOptions>> {
  const FileToDartConstListIntPump(super.a, super.b);

  @override
  Pipe<_B, PipeOptions> run() {
    final bytes = a.data.readAsBytesSync();
    final sbytes = bytes.join(',');

    final bo = b.options as DartConstListIntOptions?;
    final name = bo?.name ?? const DartConstListIntOptions().name;

    return O(
      DartConstListInt('const $name = <int>[$sbytes];'),
      options: b.options,
    );
  }
}

class DartConstListInt extends OwnTypeString {
  const DartConstListInt([super.data = '']);
}

class DartConstListIntOptions extends PipeOptions {
  const DartConstListIntOptions({this.name = 'data'});

  /// A variable name into template.
  final String name;
}
