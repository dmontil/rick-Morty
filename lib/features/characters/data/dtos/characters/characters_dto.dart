import 'package:ricky/features/characters/data/dtos/info/info_dto.dart';
import 'package:ricky/features/characters/domain/models/models.dart';

class CharactersDTO {
  final InfoDTO info;
  final List<Character> results;
  CharactersDTO({
    required this.info,
    required this.results,
  });

  factory CharactersDTO.fromJson(Map<String, dynamic> map) {
    return CharactersDTO(
      info: InfoDTO.fromJson(map['info']),
      results: List<Character>.from(
        map['results'].map((model) => Character.fromJson(model)),
      ),
    );
  }
}
