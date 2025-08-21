import 'package:book_app/feature/home/presentation/views/home_view.dart';
import 'package:book_app/feature/home/presentation/views/widgets/book_details_body.dart';
import 'package:book_app/feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoute {
  static const homeView = '/HomeView';
  static const bookDetails = '/BookDetails';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: homeView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: bookDetails,
          builder: (context, state) => const BookDetailsBody())
    ],
  );
}
