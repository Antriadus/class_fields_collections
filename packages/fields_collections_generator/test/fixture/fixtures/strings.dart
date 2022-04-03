// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../strings.dart';

extension StringsFieldsExtensions on Strings {
  Set<String> get fields => {
        firstName,
        lastName,
      };
}
