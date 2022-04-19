import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/private.dart';

@fields
class Private {
  const Private(
    this._lastName, {
    required this.firstName,
  });

  final String firstName;
  final String _lastName;
}
