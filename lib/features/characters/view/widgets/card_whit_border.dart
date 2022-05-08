import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class _Constants {
  static const _radiusCircular = Radius.circular(10);
}

class CardWhitBorder extends StatelessWidget {
  final Widget child;
  const CardWhitBorder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: child,
      ),
    );
  }
}
