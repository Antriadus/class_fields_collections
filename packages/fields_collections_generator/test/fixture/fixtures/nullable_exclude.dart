// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_exclude.dart';

extension ExcludeFieldsExtensions on Exclude {
  Set<Object?> get fields => {
        firstName,
        age,
      };
}
