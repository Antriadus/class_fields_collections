// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_strings.dart';

extension StringsFieldsExtensions on Strings {
  Map<String, String?> get fields => {
        "name": name,
        "age": age,
      };
}
