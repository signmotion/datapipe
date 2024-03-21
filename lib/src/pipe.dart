part of '../datapipe.dart';

/// Alias for [Pipe].
/// `O` looks like pipe.
typedef O<A, P extends PipeOptions> = Pipe<A, P>;

/// A pipe (wrapper with options) for data.
/// See [O].
class Pipe<A, P extends PipeOptions> {
  const Pipe(this.data, {this.options});

  final A data;
  final P? options;

  /// Constructs a chain for transforms [A] to [other].
  Pipe<dynamic, P> operator |(Pipe<dynamic, P> other) {
    final pump = switch ((this, other)) {
      // Directory
      (
        Pipe<Directory, PipeOptions> a,
        Pipe<DartConstTagsBytes, PipeOptions> b,
      ) =>
        DirectoryToDartConstTagsBytePump(a, b).run(),

      // File
      (
        Pipe<File, PipeOptions> a,
        Pipe<DartConstListInt, PipeOptions> b,
      ) =>
        FileToDartConstListIntPump(a, b).run(),
      (
        Pipe<File, PipeOptions> a,
        Pipe<List<int>, PipeOptions> b,
      ) =>
        FileToListIntPump(a, b).run(),

      // List<int>
      (
        Pipe<List<int>, PipeOptions> a,
        Pipe<Base64String, PipeOptions> b,
      ) =>
        ListIntToBase64StringPump(a, b).run(),
      (
        Pipe<List<int>, PipeOptions> a,
        Pipe<File, PipeOptions> b,
      ) =>
        ListIntToFilePump(a, b).run(),

      // any
      (
        Pipe<dynamic, PipeOptions> a,
        Pipe<String, PipeOptions> b,
      ) =>
        AnyToStringPump(a, b).run(),

      // unimplemented
      _ => throw UnimplementedError(' The pipe from `$runtimeType`'
          ' to `${other.runtimeType}` unimplemented.'),
    };

    return pump as Pipe<dynamic, P>;
  }

  Pipe<B, P> cast<B>({P? optionsForCasted}) =>
      Pipe(data as B, options: optionsForCasted);

  @override
  String toString() => '$data';
}

/// A base class for options.
abstract class PipeOptions {
  const PipeOptions();
}
