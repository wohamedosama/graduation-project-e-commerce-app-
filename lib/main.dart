// ignore_for_file: unused_import

import 'dart:io';
import 'package:e_commerce/app_router.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/features/authentication/view/login/login_screen.dart';
import 'package:e_commerce/features/authentication/view/onboarding/onboarding.dart';
import 'package:e_commerce/my_bloc_observer.dart';
import 'package:e_commerce/utils/constants/string_router.dart';
import 'package:e_commerce/utils/network/local/cache_helper.dart';
import 'package:e_commerce/utils/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_menu.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  Widget? widget;
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyCudktaqMju7As7cuwU95S0HVlM8ZI5JAM",
            appId: "1:43702926796:android:6fb6a780614159c27e7169",
            messagingSenderId: "43702926796",
            projectId: "e-commerce-2f411.appspot.com",
          ),
        )
      : await Firebase.initializeApp();
  await CacheHelper.init();

  token = CacheHelper.getData(key: 'token');
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  if (onBoarding != null) {
    if (token != null) {
      widget = const NavigationMenu();
    } else {
      widget = const LoginScreen();
    }
  } else {
    widget = const OnBoardingScreen();
  }
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    ECommerce(
      appRouter: AppRouter(),
      startWidget: widget,
    ),
  );
}

class ECommerce extends StatelessWidget {
  const ECommerce({
    super.key,
    required this.appRouter,
    this.startWidget,
  });

  final AppRouter appRouter;
  final Widget? startWidget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: startWidget,
    );
  }
}
