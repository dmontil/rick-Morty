import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';
class EmptyList extends StatelessWidget {
  const EmptyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'errorTitle'.tr(),style:  AppTextStyle.h1,),
        const SizedBox(height: AppSpaces.s),
        Text(
          'errorSubtitle'.tr(), style: AppTextStyle.regularSmall,),
      ],
    );
  }
}
