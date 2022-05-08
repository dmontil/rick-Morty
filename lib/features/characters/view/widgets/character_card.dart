import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';
import 'package:ricky/features/characters/view/widgets/card_whit_border.dart';
import 'package:ricky/features/characters/view/widgets/favorite_icon.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpaces.s),
      child: Row(
        children: [
          _ImageWithFav(
            character: character,
          ),
          _InfoCard(
            character: character,
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Character character;
  const _InfoCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyleTitle = AppTextStyle.lightXS.copyWith(
      overflow: TextOverflow.ellipsis,
    );
    final textStyleSubtitle = AppTextStyle.regularMedium.copyWith(
      overflow: TextOverflow.ellipsis,
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.46,
      child: CardWhitBorder(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(character.species, style: textStyleTitle),
            Text(character.name, style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text(
              'lastLocation'.tr(),
              style: textStyleTitle,
              overflow: TextOverflow.ellipsis,
            ),
            Text(character.location.name, style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text('firstSeen'.tr(), style: textStyleTitle),
            Text(
              'Never Ricking Morty',
              style: textStyleSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageWithFav extends StatelessWidget {
  final Character character;
  const _ImageWithFav({
    Key? key,
    required this.character,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          child: Image.network(
            character.image,
            fit: BoxFit.cover,
            height: 160,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: FavoriteIcon(
              onTap: () => context
                  .read<CharacterCubit>()
                  .toggleFavoriteCard(character.id),
              isFavorite: character.isFavorite),
        ),
      ],
    );
  }
}
