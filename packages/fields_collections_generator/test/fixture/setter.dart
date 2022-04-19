import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/setter.dart';

@fields
class Strings {
  const Strings({
    required this.firstName,
  });

  final String firstName;
  void set lastName(String value) {}
}
