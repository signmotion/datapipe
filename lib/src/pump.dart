part of '../datapipe.dart';

/// A universal pump for [Pipe].
class Pump<A extends Pipe<dynamic, OA>, B extends Pipe<dynamic, OB>,
    OA extends PipeOptions, OB extends PipeOptions> {
  const Pump(this.a, this.b);

  final A a;
  final B b;

  B run() => switch ((a, b)) {
        // Directory
        (
          Pipe<Directory, PipeOptions> ca,
          Pipe<DartConstTagsBytes, PipeOptions> cb,
        ) =>
          pumpDirectoryToDartConstTagsBytes(ca, cb) as B,

        // File
        (
          Pipe<File, PipeOptions> ca,
          Pipe<DartConstListInt, PipeOptions> cb,
        ) =>
          pumpFileToDartConstListInt(ca, cb) as B,
        (
          Pipe<File, PipeOptions> ca,
          Pipe<List<int>, PipeOptions> cb,
        ) =>
          pumpFileToListInt(ca, cb) as B,

        // List<int>
        (
          Pipe<List<int>, PipeOptions> ca,
          Pipe<Base64String, PipeOptions> cb,
        ) =>
          pumpListIntToBase64String(ca, cb) as B,
        (
          Pipe<List<int>, PipeOptions> ca,
          Pipe<File, PipeOptions> cb,
        ) =>
          pumpListIntToFile(ca, cb) as B,

        // unimplemented
        _ => throw UnimplementedError(' The pipe from `${a.runtimeType}`'
            ' to `${b.runtimeType}` unimplemented.'),
      };
}
