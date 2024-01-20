import 'package:bookly/feature/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

import '../../feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/splashView';
  static const kHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
