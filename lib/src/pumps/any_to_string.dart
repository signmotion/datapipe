part of '../../datapipe.dart';

/// Pumping any type to [String].
Pipe<dynamic, PipeOptions> pumpAnyToString(
  Pipe<dynamic, PipeOptions> a,
  Pipe<String, PipeOptions> b,
) =>
    Pipe('$a', options: b.options);
