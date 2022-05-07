import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const PrimaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.c100),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: AppSpaces.s,
            horizontal: AppSpaces.l,
          ),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyle.h3.copyWith(color: AppColors.white),
      ),
    );
  }
}
