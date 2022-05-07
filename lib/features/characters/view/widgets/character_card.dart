import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/features/app.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';

class _Constants {
  static const _radiusCircular = Radius.circular(10);
}

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          _ImageWithFav(
            url: character.image,
            isFavorite: character.isFavorite,
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
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.c200,
          borderRadius: BorderRadius.only(
              topRight: _Constants._radiusCircular,
              bottomRight: _Constants._radiusCircular)),
      child: Container(
        margin: const EdgeInsetsDirectional.only(bottom: 1, end: 1, top: 1),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
              topRight: _Constants._radiusCircular,
              bottomRight: _Constants._radiusCircular),
        ),
        padding: const EdgeInsets.symmetric(
            vertical: AppSpaces.s, horizontal: AppSpaces.m),
        //TODO: REMOVE
        width: MediaQuery.of(context).size.width * 0.48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(character.species, style: textStyleTitle),
            Text(character.name, style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text(
              'Last kwnon location:',
              style: textStyleTitle,
              overflow: TextOverflow.ellipsis,
            ),
            Text(character.location.name, style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text('First seen', style: textStyleTitle),
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
  final String url;
  final bool isFavorite;
  const _ImageWithFav({
    Key? key,
    required this.url,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          child: Image.network(
            url,
            fit: BoxFit.cover,
            height: 160,
          ),
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: Icon(
            Icons.star_outline,
            size: 50,
          ),
        )
      ],
    );
  }
}
