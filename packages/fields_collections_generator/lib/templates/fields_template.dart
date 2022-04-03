import 'package:fields_collections/models/class.dart';

/// {@template fields_template}
/// The template for the field keys
/// {@endtemplate}
class FieldsTemplate {
  /// {@macro fields_template}
  const FieldsTemplate(this.subject);

  /// The subject to generate the fields for
  final Class subject;

  /// generates the fields for the subject
  String generate() {
    final genName = '_\$${subject.name}Fields';

    // final fields = subject.fields.map((field) {
    //   return "final ${field.displayName} = '${field.displayName}';";
    // });

//     final result = '''
// class _\$$genName {
//   get Set<object?> =>{
//   ${fields.join('\n')},
//   }
// }
// ''';
    final result = '';
    return result;
  }
}
