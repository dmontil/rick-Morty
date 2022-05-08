import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/core/styles/app_assets.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';

class FavoriteIcon extends StatelessWidget {
  final bool isFavorite;
  final Function onTap;
  const FavoriteIcon({Key? key, required this.onTap, required this.isFavorite}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
          return InkWell(
              onTap: () => onTap(),
              child: Image.asset(
                isFavorite ? AppAssets.favUnselected : AppAssets.fav,
                height: 36,
                width: 36,
              ));
        });
  }
}