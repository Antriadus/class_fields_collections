import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

class ClassFields {
  ClassFields({
    required this.fields,
  });

  factory ClassFields.fromElements(Iterable<FieldElement> elements) {
    Iterable<ClassField> fromElements(Iterable<FieldElement> elements) sync* {
      for (final element in elements) {
        // [element.isSynthetic] is true for fields that are
        // declared getters
        // Ignore all static fields
        if (element.isSynthetic || element.isStatic) {
          continue;
        }

        yield ClassField.fromElement(element);
      }
    }

    return ClassFields(fields: fromElements(elements));
  }

  final Iterable<ClassField> fields;

  String get commonType {
    final fieldsSupertypes = fields.map((field) => field.allInterfaceTypes).toSet();

    return fieldsSupertypes
        .fold<Set<String>>(
          fieldsSupertypes.first,
          (a, b) => a.intersection(b),
        )
        .first;
  }
}

class ClassField {
  ClassField({
    required this.element,
    required this.name,
    required this.allInterfaceTypes,
  });

  factory ClassField.fromElement(FieldElement element) {
    return ClassField(
      name: element.name,
      element: element,
      allInterfaceTypes: [
        // element.type.
        if (element.type is InterfaceType) ...{
          ...(element.type as InterfaceType).allSupertypes.map((e) => e.getDisplayString(withNullability: true)),
          element.type.getDisplayString(withNullability: true),
        }
      ].reversed.toSet(),
    );
  }
  final Set<String> allInterfaceTypes;
  final FieldElement element;
  final String name;
}
