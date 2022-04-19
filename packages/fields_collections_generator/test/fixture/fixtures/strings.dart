// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../strings.dart';

extension StringsFieldsExtensions on Strings {
  Map<String, String> get fields => {
        "firstName": firstName,
        "lastName": lastName,
      };
}
