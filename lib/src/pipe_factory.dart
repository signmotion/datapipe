part of '../data_pipe.dart';

/// A factory for data pumping.
class PipeFactory {
  const PipeFactory();

  Pipe<dynamic, dynamic, DataOptions> construct(
    dynamic a,
    dynamic b,
    DataOptions? o,
  ) {
    if (a is File && b is List<int>) {
      return FileToListIntPipe(a, b);
    }

    throw UnimplementedError(' The pipe from `${a.runtimeType}`'
        ' to `${b.runtimeType}`'
        ' with options `${o?.runtimeType}` unimplemented.');
  }

  // Pipe<A, B, O> construct(A a, B b, O? o) => switch ((a, b, o)) {
  //       (File a, List<int> b, DataOptions? _) =>
  //         FileToListIntPipe(a, b) as Pipe<A, B, O>,
  //       _ => throw UnimplementedError(' The pipe from `$a.runtimeType`'
  //           ' to `${b.runtimeType}`'
  //           ' with options `${o?.runtimeType}` unimplemented.'),
  //     };
}
