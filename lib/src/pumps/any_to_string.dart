import '../../datapipe.dart';

typedef _A = dynamic;
typedef _B = String;

/// Pumping any type to [String].
class AnyToStringPump
    extends Pump<Pipe<_A, PipeOptions>, Pipe<_B, PipeOptions>> {
  const AnyToStringPump(super.a, super.b);

  @override
  Pipe<_B, PipeOptions> run() => Pipe('$a', options: b.options);
}
