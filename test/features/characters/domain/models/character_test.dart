import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';
import '../../../../fixture_reader_features.dart';
import 'fakes/character.dart';

void main() {
  group('characters', () {
    test(
      'Characters fromJson should return a valid model',
          () async {
        final Map<String, dynamic> jsonMap = json.decode(
          fixtureFeature(
            'characters.json',
            'characters',
            FixtureType.model,
          ),
        ) as Map<String, dynamic>;

        final Character _result = Character.fromJson(jsonMap);

        expect(_result, tCharacter);
      },
    );


  });
}