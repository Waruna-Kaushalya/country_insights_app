import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/design/responsive.dart';
import 'routes/router.dart';

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
    return ScreenUtilInit(
      designSize: getDesignSize(context),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        themeMode: ThemeMode.light,

        // builder: (context, child) {
        //   // return BlocListener<AuthBloc, AuthState>(
        //   //   /// Listens to changes in the authentication status during the app lifecycle.
        //   //   ///
        //   //   /// The [listener] function is called whenever the [AuthBloc] state changes.
        //   //   /// It checks the authentication status and performs
        //   //   /// the necessary actions based on the status.
        //   //   ///
        //   //   /// - If the user becomes unauthenticated or there is a
        //   //   /// failure in authentication, it navigates to the authentication page.
        //   //   ///
        //   //   /// - If the user becomes authenticated and not already
        //   //   /// authenticated, it navigates to the progress magic page.
        //   //   ///
        //   //   /// The [child] widget is passed as an argument to the [BlocListener].
        //   //   /// It represents the child widget that will be built
        //   //   /// and returned by the [BlocListener].
        //   //   listener: (context, state) async {
        //   //     if (state.authenticationStatus!.isSplash) {
        //   //       /// Navigate to the authentication page
        //   //       return Routes.router.go(RoutesPaths.splashScreen);
        //   //     }
        //   //     if (state.authenticationStatus!.isUnauthenticated ||
        //   //         state.authenticationStatus!.isFailure) {
        //   //       /// Navigate to the authentication page
        //   //       return Routes.router.go(RoutesPaths.authPage);
        //   //     }
        //   //     if (state.authenticationStatus!.isAuthenticated &&
        //   //         !state.isAlreadyAuthenticated!) {
        //   //       /// Navigate to the progress magic page
        //   //       ///
        //   //       // final bool? isFirstTimeOnboarding =
        //   //       //     prefs.getBool("isFirstTimeOnboarding");

        //   //       final bool? isFirstTimeOnboarding =
        //   //           await SharedPreferencesHelper.getBool(
        //   //         key: SharedPreferencesKeys.isFirstTimeOnboarding,
        //   //       );

        //   //       /// Redirect to the progress magic page
        //   //       if (isFirstTimeOnboarding == null) {
        //   //         return Routes.router.go(RoutesPaths.welcomePage);
        //   //       }
        //   //       if (!isFirstTimeOnboarding) {
        //   //         /// progress magic page
        //   //         return Routes.router
        //   //             .go(RoutesPaths.progressMagic);
        //   //       }
        //   //       // return Routes.router.go(RoutesPaths.progressMagic);
        //   //     }
        //   //   },
        //   //   child: child,
        //   // );
        // },
        routerConfig: Routes.router,
      ),
    );
  }
}
