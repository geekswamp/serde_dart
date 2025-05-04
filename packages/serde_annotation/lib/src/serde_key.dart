import 'package:meta/meta_meta.dart';
import 'package:serde_annotation/serde_annotation.dart';

/// {@template serde_key}
/// A class that provides metadata for serialization and deserialization of a field.
///
/// This class can be used to customize how a field is serialized or deserialized
/// by specifying its name, default value, or whether it should be ignored.
/// {@endtemplate}
@Target({TargetKind.field, TargetKind.getter})
class SerdeKey {
  /// {@macro serde_key}
  const SerdeKey({
    this.name,
    this.value,
    this.ignore = false,
    this.ignoreFromJson = false,
    this.ignoreToJson = false,
    this.fieldFormat = FieldFormat.snakeCase,
  });

  /// The name of the field in the serialized data.
  ///
  /// If `name` is provided, it will override the default field name during
  /// serialization and deserialization.
  final String? name;

  /// The default value to use if the field is not present in the serialized data.
  ///
  /// This value will be used during deserialization when the field is missing
  /// in the input data.
  final Object? value;

  /// Whether to ignore this field during serialization and deserialization.
  ///
  /// If `true`, the field will be excluded from both serialization and
  /// deserialization processes.
  final bool? ignore;

  /// Whether to ignore this field during deserialization (`fromJson` method).
  ///
  /// If `true`, the field will not be populated during deserialization.
  final bool? ignoreFromJson;

  /// Whether to ignore this field during serialization (`toJson` method).
  ///
  /// If `true`, the field will not be included in the serialized output.
  final bool? ignoreToJson;

  /// The format to use for the field name in the serialized data.
  ///
  /// This format will be applied to the field name during serialization
  /// and deserialization.
  final FieldFormat fieldFormat;
}
