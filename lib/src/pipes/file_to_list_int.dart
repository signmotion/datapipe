part of '../../data_pipe.dart';

/// Pumping [File] to [List<int>].
Data<List<int>, DataOptions> pumpFileToListInt(
  Data<File, DataOptions> a,
  Data<List<int>, DataOptions> b,
) {
  print('${a.runtimeType} => ${b.runtimeType}');
  final bytes = a.data.readAsBytesSync();

  return Data(bytes.toList(), options: b.options);
}


// class FileToListIntPipe extends Pipe<Data<File, DataOptions>,
//     Data<List<int>, DataOptions>, DataOptions, DataOptions> {
//   const FileToListIntPipe(super.da, super.db);

//   @override
//   Data<List<int>, DataOptions> run() {
//     print('$runtimeType');
//     final bytes = a;

//     return Data(b.data, options: b.options);
//   }
// }
