import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/characters/data/repositories/api_characters_repository.dart';
import 'package:ricky/features/characters/view/cubit/characters_cubit.dart';

import 'features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CharacterCubit(
            charactersRepository: ApiCharactersRepository(),
          ),
        ),
      ],
      child: EasyLocalization(
          supportedLocales: const [Locale('es', 'ES')],
          path: 'lang',
          assetLoader: const RootBundleAssetLoader(),
          // <-- change the path of the translation files
          fallbackLocale: const Locale('es', 'ES'),
          child: const App()),
    ),
  );
}
