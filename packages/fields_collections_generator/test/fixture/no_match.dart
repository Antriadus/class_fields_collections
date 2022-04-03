import 'package:fields_collections_annotations/class_fields_annotation.dart';

part './fixtures/no_match.dart';

@fields
class NestedTypes {
  const NestedTypes({
    required this.bottom,
    required this.name,
  });

  final Bottom bottom;
  final String name;
}

class Bottom {}
