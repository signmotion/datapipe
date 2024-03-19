part of '../data_pipe.dart';

/// Alias for [Data].
/// `O` looks like pipe.
typedef O<A, P extends DataOptions> = Data<A, P>;

/// A wrapper for data.
/// See [O].
class Data<A, P extends DataOptions> {
  const Data(this.data, {this.options});

  final A data;
  final P? options;

  /// Constructs a chain for transforms [A] to [other].
  Data<dynamic, P> operator |(Data<dynamic, P> other) =>
      Pipe(this, other).run();

  Data<B, P> cast<B>({P? optionsForCasted}) =>
      Data(data as B, options: optionsForCasted);

  @override
  String toString() => '$data';
}

/// A base class for options.
class DataOptions {
  const DataOptions();
}
