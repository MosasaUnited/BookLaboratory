import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repository/home_repo_imp.dart';
import 'package:bookly/feature/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/home.dart';
import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/presentation/views/book_details_view.dart';
import '../../feature/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: kSplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BooksModel,
          )),
    ),
  ]);
}
