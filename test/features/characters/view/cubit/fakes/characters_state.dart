import 'package:ricky/features/characters/view/cubit/characters_state.dart';

import '../../../domain/models/fakes/character.dart';

const CharacterState tInitialState = CharacterState(
  isLoading: true,
  characters: [],
  error: false,
);
const CharacterState tErrorState = CharacterState(
  isLoading: false,
  characters: [],
  error: true,
);

const CharacterState tGetCharactersState = CharacterState(
  isLoading: false,
  characters: [tCharacter],
  error: false,
);