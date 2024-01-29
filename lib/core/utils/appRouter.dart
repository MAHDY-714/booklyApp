import 'package:bookly_app/features/home/presentation/views/bookDetailsView.dart';
import 'package:bookly_app/features/home/presentation/views/home.dart';
import 'package:bookly_app/features/splashView/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  ///you must add the initial path for the first Screen
  ///is only first ('/')
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
