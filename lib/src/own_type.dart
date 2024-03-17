part of '../data_pipe.dart';

abstract class OwnTypeString extends OwnType<String> {
  const OwnTypeString(super.data);
}

abstract class OwnType<T> {
  const OwnType(this.data);

  final T data;
}
