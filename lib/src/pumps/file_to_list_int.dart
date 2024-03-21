import 'dart:io';

import '../../datapipe.dart';

typedef _A = File;
typedef _B = List<int>;

/// Pumping [File] to [List<int>].
class FileToListIntPump
    extends Pump<Pipe<_A, PipeOptions>, Pipe<_B, PipeOptions>> {
  const FileToListIntPump(super.a, super.b);

  @override
  Pipe<_B, PipeOptions> run() =>
      Pipe(a.data.readAsBytesSync().toList(), options: b.options);
}
