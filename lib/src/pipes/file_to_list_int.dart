part of '../../data_pipe.dart';

class FileToListIntPipe extends Pipe<File, List<int>, DataOptions> {
  const FileToListIntPipe(super.a, super.b)
      : super(options: const DataOptions());

  @override
  List<int> run() => a.readAsBytesSync().toList();
}
