import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/features/people/view/widgets/card_whit_border.dart';
import 'package:ricky/features/people/domain/models/people/person.dart';

class PersonCard extends StatelessWidget {
  final Person person;
  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpaces.s),
      child: Row(
        children: [
          _RandomAvatarByUrl(
            person: person,
          ),
          _InfoCard(
            person: person,
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final Person person;
  const _InfoCard({Key? key, required this.person}) : super(key: key);

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
            Text('name'.tr(), style: textStyleTitle),
            Text(person.name ?? 'unknown'.tr(), style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text(
              'height'.tr(),
              style: textStyleTitle,
              overflow: TextOverflow.ellipsis,
            ),
            Text(person.height ?? "0", style: textStyleSubtitle),
            const SizedBox(height: AppSpaces.xs),
            Text('mass'.tr(), style: textStyleTitle),
            Text(
              person.mass ?? "0",
              style: textStyleSubtitle,
            ),
          ],
        ),
      ),
    );
  }
}

class _RandomAvatarByUrl extends StatelessWidget {
  final Person person;
  const _RandomAvatarByUrl({
    Key? key,
    required this.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          child: randomAvatar(person.url ?? "", height: 160),
        ),
      ],
    );
  }
}
