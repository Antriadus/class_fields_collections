import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:fields_collections/src/common_type_finder.dart';

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
        if (element.type is InterfaceType) {
          yield ClassField.fromElement(element, element.type as InterfaceType);
        }
      }
    }

    return ClassFields(fields: fromElements(elements));
  }

  final Iterable<ClassField> fields;

  String get commonType {
    final allTypes = fields.map((field) => field.allInterfaceTypes).toList();
    return CommonTypeFinder.findTopCommonType(allTypes);
  }
}

class ClassField {
  ClassField({
    required this.element,
    required this.name,
    required this.allInterfaceTypes,
    required this.isNullable,
  });

  factory ClassField.fromElement(FieldElement element, InterfaceType type) {
    return ClassField(
      name: element.name,
      element: element,
      isNullable: type.nullabilitySuffix == NullabilitySuffix.question,
      allInterfaceTypes: [
        element.type.getDisplayString(withNullability: true),
        ...type.allSupertypes.map((e) => e.getDisplayString(withNullability: true)),
      ].toSet(),
    );
  }
  final Set<String> allInterfaceTypes;
  final FieldElement element;
  final String name;
  final bool isNullable;
}
