part of '../datapipe.dart';

abstract class OwnType<T> {
  const OwnType(this.data);

  final T data;

  @override
  String toString() => '$data';
}

abstract class OwnTypeString extends OwnType<String> {
  const OwnTypeString(super.data);
}
