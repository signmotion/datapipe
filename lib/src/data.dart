part of '../data_pipe.dart';

/// Alias for [Data].
typedef D<A, O extends DataOptions> = Data<A, O>;

/// A wrapper for data.
/// See [D].
class Data<A, O extends DataOptions> {
  const Data(this.data, {this.options});

  final A data;
  final O? options;

  /// Constructs a chain for transforms [A] to [other].
  Data<dynamic, O> operator |(Data<dynamic, O> other) => Data(
        // ignore: inference_failure_on_instance_creation
        const PipeFactory().construct(this, other, options).run(),
        options: other.options,
      );

  Data<B, O> cast<B>({O? optionsForCasted}) =>
      Data(data as B, options: optionsForCasted);
}

/// A base class for options.
class DataOptions {
  const DataOptions();
}
