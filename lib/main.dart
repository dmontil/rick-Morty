import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ricky/features/people/data/repositories/api_people_repository.dart';
import 'package:ricky/features/people/view/cubit/people_cubit.dart';

import 'features/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PeopleCubit(
            peopleRepository: ApiPeopleRepository(),
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
