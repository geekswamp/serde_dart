import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:serde_annotation/serde_annotation.dart';
import 'package:source_gen/source_gen.dart';

final class SerdeGenerator extends GeneratorForAnnotation<Serde> {
  @override
  generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        '@serde can only be applied to classes.',
        element: element,
      );
    }

    final classElement = element;
    final className = classElement.name;
    final fields = classElement.fields.where(
      (e) => !e.isStatic && !e.isSynthetic,
    );
    final buffer = StringBuffer();

    buffer.writeln('mixin _\$$className {');

    for (final field in fields) {
      buffer.writeln('  ${field.type} get ${field.name};');
    }

    buffer.writeln('}');

    return buffer.toString();
  }
}
