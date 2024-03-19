part of '../../datapipe.dart';

extension PipeExt<T> on T {
  Pipe<T, PipeOptions> get o => Pipe(this);

  Pipe<T, PipeOptions> oo(PipeOptions options) => Pipe(this, options: options);
}
