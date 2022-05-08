import 'package:flutter/material.dart';
import 'package:ricky/core/styles/app_styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.footer);
  }
}
