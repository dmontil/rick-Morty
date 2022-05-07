import 'package:ricky/features/characters/domain/models/models.dart';

abstract class CharactersRepository {
  Future<List<Character>> getCharacters();
  Future<Character> getCharacter(int id);
  Future<List<Location>> getLocations();
  Future<List<Episode>> getEpisodes();
}