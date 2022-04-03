// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../nullable_exclude_but_match.dart';

extension NullableExcludeButMatchFieldsExtensions on NullableExcludeButMatch {
  Set<String?> get fields => {
        firstName,
        lastName,
      };
}
