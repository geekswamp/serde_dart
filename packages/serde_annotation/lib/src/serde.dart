import 'package:meta/meta_meta.dart';
import 'package:serde_annotation/src/field_format.dart';

/// A constant instance of [Serde] with default values.
///
/// This instance provides default configurations for serialization and
/// deserialization, including enabling `copyWith`, `equal`, `fromJson`,
/// and `toJson` methods, and using `snake_case` for field names.
const serde = Serde(
  copyWith: true,
  equal: true,
  fromJson: true,
  toJson: true,
  fieldFormat: FieldFormat.snakeCase,
);

/// {@template serde}
/// A class that provides metadata for serialization and deserialization.
///
/// This class allows customization of generated code for serialization
/// and deserialization, such as enabling or disabling specific methods
/// and defining the format for field names.
/// {@endtemplate}
@Target({TargetKind.classType})
class Serde {
  /// {@macro serde}
  const Serde({
    this.copyWith,
    this.equal,
    this.toJson,
    this.fromJson,
    this.fieldFormat,
  });

  /// Whether to generate a `copyWith` method.
  ///
  /// If `true`, a `copyWith` method will be generated, allowing for
  /// the creation of modified copies of the object.
  final bool? copyWith;

  /// Whether to generate an `==` operator and `hashCode`.
  ///
  /// If `true`, the `==` operator and `hashCode` will be implemented
  /// for the class, enabling value equality comparisons.
  final bool? equal;

  /// Whether to generate a `fromJson` method.
  ///
  /// If `true`, a `fromJson` method will be generated to deserialize
  /// objects from JSON.
  final bool? fromJson;

  /// Whether to generate a `toJson` method.
  ///
  /// If `true`, a `toJson` method will be generated to serialize
  /// objects to JSON.
  final bool? toJson;

  /// The format to use for field names in the generated code.
  ///
  /// This specifies how field names should be formatted, such as
  /// `snake_case`, `kebab-case`, or `PascalCase`.
  final FieldFormat? fieldFormat;
}
