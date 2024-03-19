part of '../../data_pipe.dart';

/// Pumping [List<int>] to [File].
Data<File, DataOptions> pumpListIntToFile(
  Data<List<int>, DataOptions> a,
  Data<File, DataOptions> b,
) =>
    Data(
      b.data
        ..createSync(recursive: true)
        ..writeAsString('$a'),
      options: b.options,
    );
