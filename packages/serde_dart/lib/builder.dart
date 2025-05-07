library;

import 'package:build/build.dart';
import 'package:serde_dart/src/serde_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder serdeBuilder(BuilderOptions options) {
  return PartBuilder([SerdeGenerator()], '.serde.dart', options: options);
}
