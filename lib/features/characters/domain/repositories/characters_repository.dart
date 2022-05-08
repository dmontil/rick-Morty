import 'package:ricky/features/characters/domain/models/models.dart';

abstract class CharactersRepository {
  Future<List<Character>> getCharacters();
  Future<Character> getCharacter(int id);
  Future<List<Character>> getCharactersByName(String name);


}