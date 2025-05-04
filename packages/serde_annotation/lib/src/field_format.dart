/// An enumeration that defines various formats for field names.
///
/// This enum can be used to specify how field names should be formatted
/// in different contexts, such as serialization or display.
enum FieldFormat {
  /// Use the default field name format.
  none,

  /// Field names are formatted in `kebab-case`.
  kebabCase,

  /// Field names are formatted in `snake_case`.
  snakeCase,

  /// Field names are formatted in `PascalCase`.
  pascalCase,

  /// Field names are formatted in `SCREAMING_SNAKE_CASE`.
  screamingSnakeCase,
}
