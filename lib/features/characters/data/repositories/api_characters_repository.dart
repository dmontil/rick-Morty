import 'dart:convert';

import 'package:ricky/core/http/endpoints.dart';
import 'package:ricky/core/http/http_service.dart';
import 'package:ricky/features/characters/data/dtos/characters_dto.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';
import 'package:ricky/features/characters/domain/models/episode/episode.dart';
import 'package:ricky/features/characters/domain/models/location/location.dart';
import 'package:ricky/features/characters/domain/repositories/characters_repository.dart';

class ApiCharactersRepository extends CharactersRepository {
  final httpService = HttpService(baseUrl: Endpoints.baseURl);
  @override
  Future<Character> getCharacter(int id) {
    // TODO: implement getCharacter
    throw UnimplementedError();
  }

  @override
  Future<List<Character>> getCharacters() async {
    try {
      final _response = await httpService.get(
        endpoint: Endpoints.characters,
      );
      //TODO: Define error handling
      if (_response.statusCode != 200) throw Exception();
      final _jsonResponse = json.decode(_response.body);
      final CharactersDTO _charactersDTO =
          CharactersDTO.fromJson( _jsonResponse);
      return _charactersDTO.results;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<List<Episode>> getEpisodes() {
    // TODO: implement getEpisodes
    throw UnimplementedError();
  }

  @override
  Future<List<Location>> getLocations() {
    // TODO: implement getLocations
    throw UnimplementedError();
  }
}
