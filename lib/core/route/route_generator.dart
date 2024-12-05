import 'package:flutter/material.dart';
import 'package:shopping/core/route/rout_names.dart';

import '../../features/auth/sign_in/reset_page.dart';
import '../../features/auth/sign_in/send_email.dart';
import '../../features/auth/sign_in/sign_in_email.dart';
import '../../features/auth/sign_in/sing_in_password.dart';
import '../../features/auth/sign_up/about.dart';
import '../../features/auth/sign_up/sign_up.dart';
import '../../features/bottom_nav_bar.dart';
import '../../features/home/shop_categories.dart';
import '../../features/into/splash_page.dart';

class AppRoute {
  BuildContext context;
  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.signInEmail:
        return MaterialPageRoute(builder: (_) => const SignInEmail());
      case RouteNames.infoPage:
        return MaterialPageRoute(builder: (_) => const InfoPage());
      case RouteNames.signInPassword:
        return MaterialPageRoute(builder: (_) => const SignInPassword());
      case RouteNames.createAccount:
        return MaterialPageRoute(builder: (_) => const CreateAccount());
      case RouteNames.resetPage:
        return MaterialPageRoute(builder: (_) => const ResetPage());
      case RouteNames.sendEmailPage:
        return MaterialPageRoute(builder: (_) => const SendEmail());
      // case RouteNames.homePage:
      //   return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.logInAbout:
        return MaterialPageRoute(builder: (_) => const LogInAbout());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.shopCategories:
        return MaterialPageRoute(builder: (_) => const ShopCategories());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
