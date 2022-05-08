import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';
import 'package:ricky/features/characters/view/widgets/character_card.dart';

class CharactersList extends StatelessWidget {

  const CharactersList({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        bloc: context.read<CharacterCubit>()..getCharacters(),
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.error) {
            return const Center(
              child: Text('Error'),
            );
          }
          return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.characters.length,
              itemBuilder: (context, index) {
                if (state.onlyFavorites) {
                  if (state.characters[index].isFavorite) {
                    return CharacterCard(
                        character: state.characters[index]);
                  }
                }else{
                  return CharacterCard(
                    character: state.characters[index],
                  );
                }
                return const SizedBox();

              });
        });
  }
}
