import 'package:analyzer/dart/element/element.dart';
import 'package:fields_collections/models/fields.dart';

class Class {
  Class({
    required this.name,
    required this.element,
    required this.classFields,
  });

  factory Class.fromElement(ClassElement element) {
    final name = element.name;
    final classFields = ClassFields.fromElements(element.fields);

    return Class(
      element: element,
      classFields: classFields,
      name: name,
    );
  }

  final String name;
  final ClassElement element;
  final ClassFields classFields;
}
