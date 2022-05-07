import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class LogoSquadMakers extends StatelessWidget {
  const LogoSquadMakers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'SquadMakers',
      style: AppTextStyle.h2.copyWith(color: AppColors.white),
    );
  }
}
