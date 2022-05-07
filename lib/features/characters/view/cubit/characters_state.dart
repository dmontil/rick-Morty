import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';

part 'characters_state.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    required List<Character> characters,
    required bool isLoading,
    required bool error,
  }) = _CharacterState;

}


