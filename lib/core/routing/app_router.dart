import 'package:doctor_booking/core/di/dependency_injection.dart';
import 'package:doctor_booking/core/routing/routes.dart';
import 'package:doctor_booking/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:doctor_booking/features/auth/login/ui/login_screen.dart';
import 'package:doctor_booking/features/home/ui/home_screen.dart';
import 'package:doctor_booking/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: LoginScreen(),
                ));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
