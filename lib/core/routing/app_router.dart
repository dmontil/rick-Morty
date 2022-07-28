import 'package:go_router/go_router.dart';
import 'package:ricky/features/characters/view/screens/character_screen.dart';
import 'package:ricky/features/people/view/screens/people_screen.dart';
import 'package:ricky/features/welcome/view/welcome_screen.dart';

enum AppRoute { welcome, characters, characterDetail, people, personDetail }

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
          builder: (context, state) => const CharactersScreen(),
          routes: [
            // GoRoute(
            //   path: '/:id',
            //   name: AppRoute.characterDetail.name,
            //   pageBuilder: (context, state) => CharactersScreen(),
            // ),
          ],
        ),
        GoRoute(
          path: 'people',
          name: AppRoute.people.name,
          builder: (context, state) => const PeopleScreen(),
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
