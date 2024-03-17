part of '../../data_pipe.dart';

/// Pumping [File] to [List<int>].
Data<List<int>, DataOptions> pumpFileToListInt(
  Data<File, DataOptions> a,
  Data<List<int>, DataOptions> b,
) =>
    Data(a.data.readAsBytesSync().toList(), options: b.options);
