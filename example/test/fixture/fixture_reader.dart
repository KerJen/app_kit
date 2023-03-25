import 'dart:io';

const fixtureReader = FixtureReader(basePath: 'test/fixture');

class FixtureReader {
  final String basePath;

  const FixtureReader({required this.basePath});

  String read(String name) => File('$basePath/$name').readAsStringSync();
}
