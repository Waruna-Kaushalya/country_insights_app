import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/design/responsive.dart';
import 'features/auth/data/bloc/auth_bloc.dart';
import 'routes/router.dart';
import 'routes/routes_paths.dart';

class CountryApp extends StatefulWidget {
  const CountryApp({super.key});

  @override
  State<CountryApp> createState() => _CountryAppState();
}

class _CountryAppState extends State<CountryApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return BlocProvider(
      create: (context) => AuthBloc()..add(AuthCheckedEvent()),
      child: ScreenUtilInit(
        designSize: getDesignSize(context),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp.router(
          themeMode: ThemeMode.light,
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, state) async {
                if (state.authState.isAuthenticated) {
                  return Routes.router.go(RoutesPaths.countries);
                } else {
                  return Routes.router.go(RoutesPaths.auth);
                }
              },
              child: child,
            );
          },
          routerConfig: Routes.router,
        ),
      ),
    );
  }
}
