import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/cubit/characters_state.dart';

class FavoriteFilter extends StatelessWidget {
  const FavoriteFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text('Mostrar favoritos: '),
        _FavoriteIcon(  )
      ],
    );
  }
}

class _FavoriteIcon extends StatelessWidget {
  const _FavoriteIcon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterCubit, CharacterState>(
        builder: (context, state) {
          return InkWell(

              onTap: ()=> context.read<CharacterCubit>().toggleFavorite(),
              child: Image.asset (state.onlyFavorites ? 'assets/fav_unselected.png' : 'assets/fav.png', height: 36,width: 36,));
        });
  }
}
