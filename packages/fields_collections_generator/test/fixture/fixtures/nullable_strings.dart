// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_strings.dart';

extension StringsFieldsExtensions on Strings {
  Set<String?> get fields => {
        name,
        age,
      };
}
