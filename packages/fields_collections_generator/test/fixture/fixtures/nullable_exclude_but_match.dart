// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_exclude_but_match.dart';

extension NullableExcludeButMatchFieldsExtensions on NullableExcludeButMatch {
  Map<String, String?> get fields => {
        "firstName": firstName,
        "lastName": lastName,
      };
}
