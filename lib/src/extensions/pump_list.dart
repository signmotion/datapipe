part of '../../data_pipe.dart';

extension PumpListExt on List<dynamic> {
  T pump<T>() {
    if (isEmpty) {
      throw ArgumentError('Empty list.');
    }

    if (length == 1) {
      return first as T;
    }

    final r = this[0];
    final v = this[1];

    // return (D(r) | D(v)).cast<T>();
    return const PipeFactory().construct(r, v, null).run() as T;
  }
}
