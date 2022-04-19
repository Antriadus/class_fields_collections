// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../multiple_nested_types.dart';

extension MultipleNestedTypesFieldsExtensions on MultipleNestedTypes {
  Map<String, Middle> get fields => {
        "top": top,
        "middle": middle,
        "third": third,
      };
}
