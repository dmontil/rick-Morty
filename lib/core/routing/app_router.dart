import 'package:go_router/go_router.dart';
import 'package:ricky/features/welcome/view/welcome_page.dart';

enum AppRoute {
  welcome,
  home,
  characterDetail,
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const WelcomePage(),
      routes: [],
    ),
  ],
);
