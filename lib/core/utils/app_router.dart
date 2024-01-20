import 'package:bookly/feature/home/presentation/views/home.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/views/widgets/book_details_view_body.dart';
import '../../feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsViewBody';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsViewBody(),
    ),
  ]);
}
