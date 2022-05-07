import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ricky/features/characters/domain/models/location/location.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required String status,
    required String gender,
    required String type,
    required String species,
    required String image,
    @Default(false)    bool isFavorite,
    required Location location,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
