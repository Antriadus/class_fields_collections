// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../exclude.dart';

extension ExcludeFieldsExtensions on Exclude {
  Set<Object> get fields => {
        firstName,
        age,
      };
}
