import 'package:bogos_app/features/auth/screens/sign_up/provider/date_provider.dart';
import 'package:bogos_app/features/auth/screens/sign_up/provider/radio_button_provider.dart';
import 'package:bogos_app/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/routes/app_routes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return RadioButtonProvider();
          },
        ),
        ChangeNotifierProvider(
          create: (_) {
            return DateProvider();
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bogo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: BAppTheme.lightTheme,
      darkTheme: BAppTheme.darkTheme,

      routerConfig: AppRouter.router,
    );
  }
}
