import 'dart:io';

import '../../datapipe.dart';

typedef _A = List<int>;
typedef _B = File;

/// Pumping [List<int>] to [File].
class ListIntToFilePump
    extends Pump<Pipe<_A, PipeOptions>, Pipe<_B, PipeOptions>> {
  const ListIntToFilePump(super.a, super.b);

  @override
  Pipe<_B, PipeOptions> run() => Pipe(
        b.data
          ..createSync(recursive: true)
          ..writeAsString('$a'),
        options: b.options,
      );
}
