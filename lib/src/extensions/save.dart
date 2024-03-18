part of '../../data_pipe.dart';

extension SaveDataListIntExt on List<int> {
  void saveToFile(String path) => _preparePath(path).writeAsBytesSync(this);
}

extension SaveDataStringExt on String {
  void saveToFile(String path) => _preparePath(path).writeAsStringSync(this);
}

extension SaveAsStringDataDynamicExt on dynamic {
  void saveAsString(String path) {
    final file = _preparePath(path);
    // ignore: avoid_dynamic_calls
    final d = this is OwnType<dynamic> ? this.data : this;

    file.writeAsString('$d');
  }
}

File _preparePath(String path) => File(path)..createSync(recursive: true);
