// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../exclude_but_match.dart';

extension ExcludeButMatchFieldsExtensions on ExcludeButMatch {
  Set<String> get fields => {
        firstName,
        lastName,
      };
}
