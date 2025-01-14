import 'package:go_router/go_router.dart';

import '../../features/home/screen/home_screen.dart';

class AppRouter {
  const AppRouter._();

  static const String home = '/home';
}

GoRouter router = GoRouter(
  initialLocation: AppRouter.home,
  routes: [
    GoRoute(
      name: AppRouter.home,
      path: AppRouter.home,
      builder: (context, state) => const HomeScreen(),
    )
  ],
);
