import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';
import 'package:ricky/features/characters/view/widgets/characters_list.dart';
import 'package:ricky/features/characters/view/widgets/favorite_icon.dart';
import 'package:ricky/features/characters/view/widgets/header.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: const Header()),
              const _ShowFavorites(),
              const CharactersList(),
              const Placeholder(
                fallbackHeight: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ShowFavorites extends StatelessWidget {
  const _ShowFavorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
  builder: (context, state) {
    return Row(
      children: [
        const Text('Mostrar favoritos: '),
        FavoriteIcon(
          onTap: () => context.read<CharacterCubit>().toggleFavoriteFilter(),
          isFavorite: state.onlyFavorites,
        )
      ],
    );
  },
);
  }
}
