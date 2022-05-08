import 'package:go_router/go_router.dart';
import 'package:ricky/features/characters/view/screens/character_screen.dart';
import 'package:ricky/features/welcome/view/welcome_screen.dart';

enum AppRoute {
  welcome,
  characters,
  characterDetail,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.welcome.name,
      builder: (context, state) => const WelcomeScreen(),
      routes: [
        GoRoute(
          path: 'characters',
          name: AppRoute.characters.name,
          builder: (context, state) =>  const CharactersScreen(),
          routes: [
            // GoRoute(
            //   path: '/:id',
            //   name: AppRoute.characterDetail.name,
            //   pageBuilder: (context, state) => CharactersScreen(),
            // ),
          ],
        ),
      ],
    ),
  ],
);
