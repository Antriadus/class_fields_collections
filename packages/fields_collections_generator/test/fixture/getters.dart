import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/getters.dart';

@fields
class Getters {
  Getters(this.age);

  final String age;
  int get value => 5;
}
