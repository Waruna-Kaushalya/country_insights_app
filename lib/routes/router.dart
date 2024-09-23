import 'package:go_router/go_router.dart';

import '../core/helper/get_current_context.dart';
import '../features/auth/presentation/pages/auth_page.dart';
import '../features/countries/presentation/pages/countries_page.dart';
import '../features/countries/presentation/pages/country_page.dart';
import 'routes_paths.dart';

class Routes {
  static final router = GoRouter(
    navigatorKey: GetCurrentContext.navigatorKey,
    routes: [
      GoRoute(
        path: RoutesPaths.auth,
        name: RoutesPaths.auth,
        builder: (context, state) => const AuthPage(),
      ),
      GoRoute(
        path: RoutesPaths.countries,
        name: RoutesPaths.countries,
        builder: (context, state) => const CountriesPage(),
        routes: [
          GoRoute(
            path: RoutesPaths.country,
            name: RoutesPaths.country,
            builder: (context, state) => CountryPage(
              code: state.uri.queryParameters['code']!,
            ),
          ),
        ],
      ),
    ],
  );
}
