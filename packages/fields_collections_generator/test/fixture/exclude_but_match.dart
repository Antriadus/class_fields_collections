import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/exclude_but_match.dart';

@fields
class ExcludeButMatch {
  const ExcludeButMatch({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  final String firstName;
  final String lastName;
  @Field(exclude: true)
  final int age;
}
