import 'package:fields_collections_annotations/class_fields_annotation.dart';

part './fixtures/strings.dart';

@fields
class Strings {
  const Strings({
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;
}
