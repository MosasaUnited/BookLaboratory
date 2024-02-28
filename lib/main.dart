import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/feature/home/data/repository/home_repo_imp.dart';
import 'package:bookly/feature/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'core/utils/service_locator.dart';
import 'feature/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const BookLab());
}

class BookLab extends StatelessWidget {
  const BookLab({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFetauredBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
