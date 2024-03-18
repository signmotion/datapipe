part of '../data_pipe.dart';

/// A base class for data pumping.
abstract class Pipe<A, B, O extends DataOptions> {
  const Pipe(this.a, this.b, {required this.options});

  final A a;
  final B b;
  final O options;

  B run();
}
