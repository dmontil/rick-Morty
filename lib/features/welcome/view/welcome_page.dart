import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/core/widgets/buttons/primary_button.dart';
import 'package:ricky/core/widgets/logo.dart';

class _Constants {
  static const double verticalPadding = 119.0;
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(
            vertical: _Constants.verticalPadding, horizontal: 12.0),
        child: Column(children: <Widget>[
          const LogoSquadMakers(),
          const SizedBox(height: AppSpaces.l),
          SizedBox(
            width: 250,
            child: Image.asset('assets/ricky_and_morty_title.png'),
          ),
          const SizedBox(height: AppSpaces.l),
          Text(
            'welcomeTitle'.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.h3.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: AppSpaces.l),
          Text(
            'welcomeSubtitle'.tr(),
            textAlign: TextAlign.center,
            style: AppTextStyle.regularMedium.copyWith(color: AppColors.white),
          ),
          const Spacer(),
          PrimaryButton(text: 'welcomeButton'.tr(), onPressed: () {}),
        ]),
      ),
    ));
  }
}