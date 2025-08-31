import 'package:book_app/core/routes.dart';
import 'package:book_app/core/service_locator.dart';
import 'package:book_app/core/style.dart';
import 'package:book_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:book_app/feature/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:book_app/feature/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
      ],
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: mainColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
          routerConfig: AppRoute.router),
    );
  }
}
