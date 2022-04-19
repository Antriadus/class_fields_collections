// **************************************************************************
// FieldsGenerator
// **************************************************************************

part of '../exclude_but_match.dart';

extension ExcludeButMatchFieldsExtensions on ExcludeButMatch {
  Map<String, String> get fields => {
        "firstName": firstName,
        "lastName": lastName,
      };
}
