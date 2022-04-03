// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../multiple_nested_types.dart';

extension MultipleNestedTypesFieldsExtensions on MultipleNestedTypes {
  Set<Middle> get fields => {
        top,
        middle,
        third,
      };
}
