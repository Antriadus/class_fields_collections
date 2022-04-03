import 'package:fields_collections_annotations/class_fields_annotation.dart';

part './fixtures/nullable_strings.dart';

@fields
class Strings {
  const Strings({
    required this.name,
    required this.age,
  });

  final String name;
  final String? age;
}
