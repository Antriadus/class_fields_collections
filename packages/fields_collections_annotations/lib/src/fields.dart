import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})

/// The annotation for a class to generate keys for all fields.
class Fields {
  const Fields();
}

/// The annotation for a class to generate keys for all fields.
const fields = Fields();

/// The annotation for a field to set the key for the field.
class Field {
  const Field({
    this.exclude = false,
  });

  //exclude this field from 'fields'
  final bool exclude;

  /// the key for the field
}
