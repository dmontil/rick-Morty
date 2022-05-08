import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ricky/core/routing/app_router.dart';
import 'package:ricky/core/styles/app_styles.dart';
import 'package:ricky/core/widgets/buttons/primary_button.dart';
import 'package:ricky/core/widgets/logo.dart';

class _Constants {
  static const double verticalPadding = 119.0;
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            color: AppColors.black,
            image: DecorationImage(
                opacity: 0.5,
                image: AssetImage(
                  AppAssets.background,
                ),
                fit: BoxFit.scaleDown)),
        padding: const EdgeInsets.symmetric(
            vertical: _Constants.verticalPadding, horizontal: 12.0),
        child: Column(children: <Widget>[
          const LogoSquadMakers(),
          const SizedBox(height: AppSpaces.l),
          SizedBox(
            width: 250,
            child: Image.asset(AppAssets.rickyAndMortyTitle),
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
          PrimaryButton(
              text: 'welcomeButton'.tr(),
              onPressed: () => context.goNamed(AppRoute.characters.name)),
        ]),
      ),
    ));
  }
}
