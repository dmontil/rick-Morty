import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/features/characters/domain/models/character/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
           _ImageWithFav(url: character.image, isFavorite: character.isFavorite,),
           _InfoCard(character: character,),
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
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppSpaces.s, horizontal: AppSpaces.m),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alive- Human', style: textStyleTitle),
            Text('Morty Smith', style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text(
              'Last kwnon location:',
              style: textStyleTitle,
              overflow: TextOverflow.ellipsis,
            ),
            Text('Story man', style: textStyleSubtitle),
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
        Image.network(
          url,
          height: 150,
          width: 150,
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
