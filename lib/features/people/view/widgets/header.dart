import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
              opacity: 0.5,
              image: AssetImage(
                AppAssets.background,
              ),
              fit: BoxFit.scaleDown),
        ),
        child: Center(
          child: SizedBox(
            width: 200,
            child: Image.asset(AppAssets.rickyAndMortyTitle),
          ),
        ));
  }
}
