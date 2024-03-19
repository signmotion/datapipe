part of '../../data_pipe.dart';

/// Pumping [List<int>] to [File].
Pipe<File, PipeOptions> pumpListIntToFile(
  Pipe<List<int>, PipeOptions> a,
  Pipe<File, PipeOptions> b,
) =>
    Pipe(
      b.data
        ..createSync(recursive: true)
        ..writeAsString('$a'),
      options: b.options,
    );
