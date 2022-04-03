import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/nullable_exclude.dart';

@fields
class Exclude {
  const Exclude({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  @Field(exclude: true)
  final String lastName;
  final String firstName;
  final int? age;
}
