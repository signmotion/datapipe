part of '../data_pipe.dart';

/// A base class for data pipe.
class Pipe<A extends Data<dynamic, OA>, B extends Data<dynamic, OB>,
    OA extends DataOptions, OB extends DataOptions> {
  const Pipe(this.a, this.b);

  // factory Pipe.construct(A a, B b) => FileToListIntPipe(a, b) as Pipe;

  // factory Pipe.construct(A a, B b) => switch ((a, b)) {
  //       (Data<File, DataOptions> ca, Data<List<int>, DataOptions> cb) =>
  //         pumpingFileToListIntPipe(a, b),
  //       _ => throw UnimplementedError(' The pipe from `$a.runtimeType`'
  //           ' to `${b.runtimeType}` unimplemented.'),
  //     };

  // factory Pipe.construct(A a, B b) => switch (a) {
  //  FileToListIntPipe pipe : FileToListIntPipe(a, b),
  //  _ => throw UnimplementedError(' The pipe from `$a.runtimeType`'
  //     ' to `${b.runtimeType}` unimplemented.'),
  // };

  final A a;
  final B b;

  B run() => switch ((a, b)) {
        (Data<File, DataOptions> ca, Data<List<int>, DataOptions> cb) =>
          pumpFileToListInt(ca, cb) as B,
        _ => throw UnimplementedError(' The pipe from `$a.runtimeType`'
            ' to `${b.runtimeType}` unimplemented.'),
      };

  // B run() => throw UnimplementedError('$runtimeType:'
  //     ' The pipe from ${A.runtimeType}'
  //     ' to ${b.runtimeType} unimplemented.');
}
