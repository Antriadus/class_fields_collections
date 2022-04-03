import 'package:fields_collections/fields_collections.dart';
import 'package:generator_test/generator_test.dart';
import 'package:test/test.dart';

void main() {
  const files = [
    'multiple_nested_types',
    'nested_types',
    'no_match',
    'nullable_nested_types',
    'nullable_no_match',
    'nullable_strings',
    'nullable_types',
    'strings',
  ];

  for (final file in files) {
    test(
      'Successfully generates $file',
      () async {
        final tester = SuccessGenerator.fromBuilder(
          file,
          classFieldsBuilder,
          onLog: print,
          logLevel: Level.ALL,
        );

        await tester.test();
      },
    );
  }
}
