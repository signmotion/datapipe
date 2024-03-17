part of '../data_pipe.dart';

typedef D<A, O extends DataOptions> = Data<A, O>;

/// A wrapper for data.
class Data<A, O extends DataOptions> {
  const Data(this.data, {O? options})
      : _options = options ?? const DataOptions();

  final A data;

  final DataOptions _options;
  DataOptions get options => _options;

  /// Constructs a chain for transforms [A] to [other].
  Data<dynamic, O> operator |(Data<dynamic, O> other) =>
      Pipe(this, other).run();
  // throw UnimplementedError(' The pipe from `$runtimeType`'
  //     ' to `${other.runtimeType}` unimplemented.');

  Data<B, O> cast<B>({O? optionsForCasted}) =>
      Data(data as B, options: optionsForCasted);
}

/// A base class for options.
class DataOptions {
  const DataOptions();
}
