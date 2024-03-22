part of '../../datapipe.dart';

extension PipeExt<T> on T {
  /// Alias for constructing [Pipe].
  /// See [oo].
  Pipe<T, PipeOptions> get o => Pipe(this);

  /// Alias for constructing [Pipe] with options.
  /// See [o].
  Pipe<T, PipeOptions> oo(PipeOptions options) => Pipe(this, options: options);
}
