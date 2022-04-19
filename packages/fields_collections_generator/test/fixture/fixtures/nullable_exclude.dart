// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_exclude.dart';

extension ExcludeFieldsExtensions on Exclude {
  Map<String, Object?> get fields => {
        "firstName": firstName,
        "age": age,
      };
}
