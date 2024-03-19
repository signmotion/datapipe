part of '../../datapipe.dart';

extension SaveDataListIntExt on Pipe<List<int>, PipeOptions> {
  void saveToFile(String path) => _preparePath(path).writeAsBytesSync(data);
}

extension SaveDataStringExt on Pipe<String, PipeOptions> {
  void saveToFile(String path) => _preparePath(path).writeAsStringSync(data);
}

extension SaveAsStringDataDynamicExt on Pipe<dynamic, PipeOptions> {
  void saveAsString(String path) {
    final file = _preparePath(path);
    // ignore: avoid_dynamic_calls
    final d = data is OwnType<dynamic> ? data.data : data;

    file.writeAsString('$d');
  }
}

File _preparePath(String path) => File(path)..createSync(recursive: true);
