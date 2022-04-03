// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_types.dart';

extension NullableTypesFieldsExtensions on NullableTypes {
  Set<Middle?> get fields => {
        top,
        middle,
        third,
      };
}
