import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/nullable_exclude_but_match.dart';

@fields
class NullableExcludeButMatch {
  const NullableExcludeButMatch({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  final String firstName;
  final String? lastName;
  @Field(exclude: true)
  final int age;
}
