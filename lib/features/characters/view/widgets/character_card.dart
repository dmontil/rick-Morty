import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const _ImageWithFav(),
          const _InfoCard(),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({Key? key}) : super(key: key);

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
  const _ImageWithFav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
          height: 150,
          width: 150,
        ),
        const Positioned(
          right: 0,
          bottom: 0,
          child: Icon(
            Icons.start,
            size: 50,
          ),
        )
      ],
    );
  }
}
