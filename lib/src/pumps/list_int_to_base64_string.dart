import 'dart:convert';

import '../../datapipe.dart';

typedef _A = List<int>;
typedef _B = Base64String;

/// Pumping [List<int>] to [Base64String].
class ListIntToBase64StringPump
    extends Pump<Pipe<_A, PipeOptions>, Pipe<_B, PipeOptions>> {
  const ListIntToBase64StringPump(super.a, super.b);

  @override
  Pipe<_B, PipeOptions> run() =>
      Pipe(Base64String(base64Encode(a.data)), options: b.options);
}

class Base64String extends OwnTypeString {
  const Base64String([super.data = '']);
}
