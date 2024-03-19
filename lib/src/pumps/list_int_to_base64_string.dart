part of '../../datapipe.dart';

/// Pumping [List<int>] to [Base64String].
Pipe<Base64String, PipeOptions> pumpListIntToBase64String(
  Pipe<List<int>, PipeOptions> a,
  Pipe<Base64String, PipeOptions> b,
) =>
    Pipe(Base64String(base64Encode(a.data)), options: b.options);

class Base64String extends OwnTypeString {
  const Base64String([super.data = '']);
}
