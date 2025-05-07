# serde_dart

`serde_dart` is a Dart package designed to simplify the process of serializing and deserializing data. It provides a robust and flexible way to convert Dart objects to and from various data formats, such as JSON, while maintaining type safety and ease of use.

## Features

- **Serialization**: Convert Dart objects into formats like JSON or other custom formats.
- **Deserialization**: Parse data formats (e.g., JSON) back into Dart objects.

## Installation

Add the following to your `pubspec.yaml`:

```yaml
dependencies:
  serde_annotation: <latest-version>
  
dev_dependencies:
  build_runner: <latest-version>
  serde_dart: <latest-version>
```

## Usage

You can simply annotate your Dart classes with `@serde` to enable serialization and deserialization. Here's a quick example:

```dart
part 'person.serde.dart';

@serde
class Person with _$Person {
  const Person(this.name, this.age, this.height);
  
  final String name;
  final int age;
  final int height;
  @SerdeKey(ignore: true)
  final String email;
  @SerdeKey(name: 'birth_date')
  final String bornDate;
  
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
    
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
```