import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('es', 'ES')],
        path: 'lang',
        assetLoader:
            const RootBundleAssetLoader(), // <-- change the path of the translation files
        fallbackLocale: const Locale('es', 'ES'),
        child: const App()),
  );
}
