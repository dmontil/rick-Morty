import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/characters/domain/repositories/characters_repository.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharactersRepository _charactersRepository;
  CharacterCubit({
    required CharactersRepository charactersRepository,
  })  : _charactersRepository = charactersRepository,
        super(
          const CharacterState(isLoading: true, characters: [], error: false),
        );

  Future<void> getCharacters() async {
    emit(state.copyWith(isLoading: true));
    try {
      final characters = await _charactersRepository.getCharacters();
      emit(state.copyWith(characters: characters, isLoading: false));
    } catch (e) {
      emit(state.copyWith(error: true, isLoading: false));
    }
  }
}
