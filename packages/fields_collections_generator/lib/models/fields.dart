import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:fields_collections/src/common_type_finder.dart';
import 'package:fields_collections_annotations/class_fields_annotation.dart';
import 'package:source_gen/source_gen.dart';

class ClassFields {
  ClassFields({
    required this.fields,
  });

  factory ClassFields.fromElements(Iterable<FieldElement> elements) {
    bool isFieldExcluded(Element element) {
      const fieldAnnotationChecker = TypeChecker.fromRuntime(Field);
      final DartObject? fieldAnnotation = fieldAnnotationChecker.firstAnnotationOf(element);
      if (fieldAnnotation != null) {
        final reader = ConstantReader(fieldAnnotation);
        final excluded = reader.read('exclude').literalValue as bool?;
        return excluded ?? false;
      }
      return false;
    }

    Iterable<ClassField> fromElements(Iterable<FieldElement> elements) sync* {
      for (final element in elements) {
        if (element.isStatic) {
          //TODO handle statics
          continue;
        }
        // getters
        else if (element.isSynthetic && element.getter != null) {
          if (!isFieldExcluded(element.nonSynthetic)) {
            yield ClassField.fromElement(element, element.type as InterfaceType);
          }
        } else if (!element.isSynthetic && element.type is InterfaceType) {
          if (!isFieldExcluded(element)) {
            yield ClassField.fromElement(element, element.type as InterfaceType);
          }
        }
      }
    }

    return ClassFields(fields: fromElements(elements).toList());
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
