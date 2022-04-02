import 'package:test/test.dart';

import 'fixture/basic.dart' as i1;
import 'util/mapped_all_fields.dart';

void main() {
  final tests = [
    UnitTest(
      groupName: 'basic',
      type: i1.Person,
      checkKeyValues: () {
        const keys = i1.Person.fields;

        expect(keys.name, 'name');
        expect(keys.age, 'age');
      },
    ),
  ];

  for (final test in tests) {
    test.run();
  }
}

class UnitTest {
  const UnitTest({
    required this.type,
    required this.checkKeyValues,
    required this.groupName,
    String? keysName,
  }) : keysName = keysName ?? 'fields';

  final Type type;
  final void Function() checkKeyValues;
  final String keysName;
  final String groupName;

  void run() {
    group(groupName, () {
      checkValues();
      testMapped();
    });
  }

  void checkValues() {
    test(
      'keys should return field names or annotated value',
      checkKeyValues,
    );
  }

  void testMapped() {
    test(
      'all fields should be mapped to keys',
      () {
        final result = mappedAllFields(type, keysName);

        expect(result, isTrue);
      },
    );
  }
}
