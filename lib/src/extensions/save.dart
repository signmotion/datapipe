part of '../../data_pipe.dart';

extension SaveDataListIntExt on Data<List<int>, DataOptions> {
  void saveToFile(String path) => _preparePath(path).writeAsBytesSync(data);
}

extension SaveDataStringExt on Data<String, DataOptions> {
  void saveToFile(String path) => _preparePath(path).writeAsStringSync(data);
}

extension SaveAsStringDataDynamicExt on Data<dynamic, DataOptions> {
  void saveToFileAsString(String path) =>
      _preparePath(path).writeAsString('$data');
}

File _preparePath(String path) => File(path)..createSync(recursive: true);
