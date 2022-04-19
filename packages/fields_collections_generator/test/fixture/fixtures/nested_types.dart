// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nested_types.dart';

extension NestedTypesFieldsExtensions on NestedTypes {
  Map<String, Bottom> get fields => {
        "top": top,
        "middle": middle,
        "bottom": bottom,
      };
}
