part of '../datapipe.dart';

/// A universal pump for [Pipe].
abstract class Pump<A extends Pipe<dynamic, PipeOptions>,
    B extends Pipe<dynamic, PipeOptions>> {
  const Pump(this.a, this.b);

  final A a;
  final B b;

  /// Pumping from [A] to [B].
  B run();
}
