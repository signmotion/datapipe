part of '../../datapipe.dart';

/// Pumping [File] to [List<int>].
Pipe<List<int>, PipeOptions> pumpFileToListInt(
  Pipe<File, PipeOptions> a,
  Pipe<List<int>, PipeOptions> b,
) =>
    Pipe(a.data.readAsBytesSync().toList(), options: b.options);
