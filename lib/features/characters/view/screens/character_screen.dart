import 'package:flutter/material.dart';
import 'package:ricky/features/characters/view/widgets/characters_list.dart';

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
              CharactersList(),
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
