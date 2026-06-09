import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

class AppRouter {
  final appRouter = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}