import 'package:build/build.dart';
import 'package:fields_collections/domain/settings.dart';
import 'package:fields_collections/src/generator.dart';
import 'package:source_gen/source_gen.dart';

/// Not meant to be invoked by hand-authored code.
Builder classFieldsBuilder(BuilderOptions options) {
  final settings = Settings.fromConfig(options.config);

  Formatter? formatter = (s) => s;

  if (settings.formatOuput) {
    formatter = null;
  }

  return SharedPartBuilder(
    [const FieldsGenerator()],
    'class_fields',
    formatOutput: formatter,
  );
}

/// The formatter for the generated code.
typedef Formatter = String Function(String);
