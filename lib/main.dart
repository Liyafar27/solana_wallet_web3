import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sol_fib_bot/providers/bloc_providers.dart' show blocProviders;
import 'package:sol_fib_bot/providers/repositories_provider.dart'
    show repositoryProviders;

import 'config/router.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: repositoryProviders,
      child: MultiBlocProvider(
        providers: blocProviders,
        child: const SolFibBotApp(),
      ),
    ),
  );
}
class SolFibBotApp extends StatelessWidget {
  const SolFibBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: repositoryProviders,
      child: MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'SOL Fibonacci Bot',
          theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: ColorScheme.dark(
              primary: Colors.blue[400]!,
              secondary: Colors.tealAccent,
              surface: const Color(0xFF1E1E1E),
            ),
            cardTheme: CardTheme(
              color: const Color(0xFF1E1E1E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFF1E1E1E),
              elevation: 0,
            ),
            navigationBarTheme: NavigationBarThemeData(
              backgroundColor: const Color(0xFF1E1E1E),
              indicatorColor: Colors.blue[400]!.withValues(alpha: 0.3),
            ),
          ),
          routerConfig: router,
        ),
      ),
    );
  }
}
