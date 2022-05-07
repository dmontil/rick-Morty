import 'package:flutter/material.dart';
import 'package:ricky/features/characters/data/repositories/api_characters_repository.dart';
import 'package:ricky/features/characters/view/widgets/character_card.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: const [
              Placeholder(
                fallbackHeight: 200,
              ),
              CharacterCard(),
              Placeholder(
                fallbackHeight: 500,
              ),
              Placeholder(
                fallbackHeight: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
