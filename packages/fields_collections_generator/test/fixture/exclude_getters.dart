import 'package:fields_collections_annotations/class_fields_annotation.dart';

part 'fixtures/exclude_getters.dart';

@fields
class ExcludeGetters {
  ExcludeGetters(this.age);

  final String age;

  @Field(exclude: true)
  int get value => 5;
}
