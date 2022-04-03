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
    final fields = StringBuffer();
    for (var field in subject.classFields.fields) {
      fields.write(field.name);
      fields.write(',\n');
    }

    final result = '''
    extension ${subject.name}FieldsExtensions on ${subject.name} {
      Set<${subject.classFields.commonType}> get fields => {
       ${fields.toString()}
      };
    }
    ''';
    return result;
  }
}
