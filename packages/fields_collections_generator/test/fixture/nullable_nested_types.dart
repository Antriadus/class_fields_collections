import 'package:fields_collections_annotations/class_fields_annotation.dart';

part './fixtures/nullable_nested_types.dart';

@fields
class NullableNestedTypes {
  const NullableNestedTypes({
    required this.top,
    required this.middle,
    required this.bottom,
  });

  final Top top;
  final Middle middle;
  final Bottom? bottom;
}

class Bottom {}

class Middle extends Bottom {}

class Top extends Middle {}
