import 'package:fields_collections/fields_collections.dart';
import 'package:generator_test/generator_test.dart';
import 'package:test/test.dart';

void main() {
  const files = [
    'exclude_but_match',
    'exclude',
    'exclude_getters',
    'getters',
    'multiple_nested_types',
    'nested_types',
    'no_match',
    'nullable_exclude_but_match',
    'nullable_exclude',
    'nullable_nested_types',
    'nullable_no_match',
    'nullable_strings',
    'nullable_types',
    'setter',
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
