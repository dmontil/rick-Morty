import 'package:flutter/material.dart';
import 'package:ricky/features/characters/view/widgets/characters_list.dart';
import 'package:ricky/features/characters/view/widgets/favorite_filter.dart';
import 'package:ricky/features/characters/view/widgets/header.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:  [
             SizedBox(
                 height: MediaQuery.of(context).size.height * 0.2,
                 child: const Header()),
              FavoriteFilter(),
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
