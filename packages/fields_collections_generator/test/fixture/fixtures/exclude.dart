// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../exclude.dart';

extension ExcludeFieldsExtensions on Exclude {
  Map<String, Object> get fields => {
        "firstName": firstName,
        "age": age,
      };
}
