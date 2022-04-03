// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nested_types.dart';

extension NestedTypesFieldsExtensions on NestedTypes {
  Set<Bottom> get fields => {
        top,
        middle,
        bottom,
      };
}
