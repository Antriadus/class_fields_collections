// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_nested_types.dart';

extension NullableNestedTypesFieldsExtensions on NullableNestedTypes {
  Set<Bottom?> get fields => {
        top,
        middle,
        bottom,
      };
}
