import 'package:fields_collections/domain/settings.dart';
import 'package:fields_collections/fields_collections.dart';
import 'package:generator_test/generator_test.dart';
import 'package:test/test.dart';

void main() {
  const files = [
    'basic',
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
          options: Settings.debug(),
        );

        await tester.test();
      },
    );
  }
}
