part of '../../data_pipe.dart';

extension PipeExt<T> on T {
  Pipe<T, PipeOptions> get o => Pipe(this);
}
