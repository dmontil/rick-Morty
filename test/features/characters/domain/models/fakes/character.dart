import 'package:ricky/features/characters/domain/models/character/character.dart';
import 'package:ricky/features/characters/domain/models/location/location.dart';

const Character tCharacter = Character(
  id: 3,
  name: 'Summer Smith',
  status: 'Alive',
  species: 'Human',
  type: '',
  gender: 'Female',
  image: 'https://rickandmortyapi.com/api/character/avatar/3.jpeg',
  location: Location(
    name: 'Earth (Replacement Dimension)',
    url: 'https://rickandmortyapi.com/api/location/20',
  ),
);
