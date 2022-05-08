import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/core/widgets/footer.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';
import 'package:ricky/features/characters/view/widgets/characters_list.dart';
import 'package:ricky/features/characters/view/widgets/favorite_icon.dart';
import 'package:ricky/features/characters/view/widgets/header.dart';
import 'package:ricky/features/characters/view/widgets/search_bar_section.dart';

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
             const  SearchBarSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpaces.m),
                child: Wrap(
                  children: const  [
                     Padding(
                       padding: EdgeInsets.symmetric(vertical: AppSpaces.xxl),
                       child: _ShowFavorites(),
                     ),
                     CharactersList(),
                  ],
                ),
              ),

              const Footer(),
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
         Text('Mostrar favoritos: ', style:  AppTextStyle.regularMedium,),
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
