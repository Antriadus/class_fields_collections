// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_types.dart';

extension NullableTypesFieldsExtensions on NullableTypes {
  Map<String, Middle?> get fields => {
        "top": top,
        "middle": middle,
        "third": third,
      };
}
