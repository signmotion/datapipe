part of '../data_pipe.dart';

/// Alias for [Pipe].
/// `O` looks like pipe.
typedef O<A, P extends PipeOptions> = Pipe<A, P>;

/// A wrapper for data.
/// See [O].
class Pipe<A, P extends PipeOptions> {
  const Pipe(this.data, {this.options});

  final A data;
  final P? options;

  /// Constructs a chain for transforms [A] to [other].
  Pipe<dynamic, P> operator |(Pipe<dynamic, P> other) =>
      Pump(this, other).run();

  Pipe<B, P> cast<B>({P? optionsForCasted}) =>
      Pipe(data as B, options: optionsForCasted);

  @override
  String toString() => '$data';
}

/// A base class for options.
abstract class PipeOptions {
  const PipeOptions();
}
