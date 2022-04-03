import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/nullable_types.dart';

@fields
class NullableTypes {
  const NullableTypes({
    required this.top,
    required this.middle,
    required this.third,
  });

  final Top? top;
  final Middle middle;
  final Middle third;
}

class Bottom {}

class Middle extends Bottom {}

class Top extends Middle {}
