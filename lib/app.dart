import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lanars_test_project/authentication/authentication.dart';
import 'package:lanars_test_project/login/login.dart';
import 'package:lanars_test_project/main/main.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: ,
      child: BlocProvider(
        create: (_) => AuthenticationBloc()..add(AuthenticationSubscriptionRequested()),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF0061A6),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD2E4FF),
    onPrimaryContainer: Color(0xFF001C37),
    secondary: Color(0xFF535F70),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD7E3F8),
    onSecondaryContainer: Color(0xFF101C2B),
    tertiary: Color(0xFF6B5778),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF3DAFF),
    onTertiaryContainer: Color(0xFF251431),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFFFDAD6),
    onErrorContainer: Color(0xFF410002),
    outline: Color(0xFF73777F),
    surface: Color(0xFFFAF9FC),
    onSurface: Color(0xFF1A1C1E),
    surfaceContainerHighest: Color(0xFFDFE2EB),
    onSurfaceVariant: Color(0xFF43474E),
    inverseSurface: Color(0xFF2F3033),
    onInverseSurface: Color(0xFFF1F0F4),
    inversePrimary: Color(0xFFA0CAFF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF0061A6),
    outlineVariant: Color(0xFFC3C6CF),
    scrim: Color(0xFF000000),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lanars',
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            switch (state.authStatus) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  MainPage.route(),
                      (route) => false,
                );
              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  LoginPage.route(),
                      (route) => false,
                );
              case AuthenticationStatus.unknown:
                break;
            }
          },
          child: child,
        );
      },
    );
  }
}