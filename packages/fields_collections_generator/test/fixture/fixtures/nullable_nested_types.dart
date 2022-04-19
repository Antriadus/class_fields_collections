// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_nested_types.dart';

extension NullableNestedTypesFieldsExtensions on NullableNestedTypes {
  Map<String, Bottom?> get fields => {
        "top": top,
        "middle": middle,
        "bottom": bottom,
      };
}
