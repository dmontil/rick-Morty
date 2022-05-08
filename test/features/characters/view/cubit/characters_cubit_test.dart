import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ricky/features/characters/domain/repositories/characters_repository.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';

import '../../domain/models/fakes/character.dart';
import 'characters_cubit_test.mocks.dart';
import 'fakes/characters_state.dart';

@GenerateMocks([CharactersRepository])
void main() {
  late CharacterCubit charactersCubit;
  late CharactersRepository charactersRepository;

  setUp(() {
    charactersRepository = MockCharactersRepository();
    charactersCubit =
        CharacterCubit(charactersRepository: charactersRepository);
  });
  tearDown(() {
    charactersCubit.close();
  });
  group('CharacterCubit', () {
    test('bloc  init fine ', () {
      expect(charactersCubit.state, tInitialState);
    });

    test('When call getCharacters emit newList', () async {
      when(charactersRepository.getCharacters())
          .thenAnswer((_) async => [tCharacter]);
      await charactersCubit.getCharacters();
      expect(charactersCubit.state, tGetCharactersState);
    });
    test('When call getCharacters and should Exception emit state with error true', () async {
      when(charactersRepository.getCharacters()).thenThrow(Exception());
      await charactersCubit.getCharacters();
      expect(charactersCubit.state, tErrorState);
    });

    test('When call toggleFavoriteFilter emit state !onlyFavorites', () async {
       charactersCubit.toggleFavoriteFilter();
      expect(charactersCubit.state, tToggleFavoriteFilterState);
    });
  });
}
