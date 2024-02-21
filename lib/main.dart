import 'package:e_commerce/app_router.dart';
import 'package:e_commerce/features/authentication/view/onboarding/onboarding.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    ECommerce(
      appRouter: AppRouter(),
    ),
  );
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
