// import 'package:flutter/material.dart';
// import '../splash/splash_view.dart';
// import '../login/login_view.dart';
// import '../register/register_view.dart';
// import '../main/main_view.dart';
// import '../forgetPassword/forgetPassword_view.dart';
// import '../onboarding/onboarding_view.dart';
// import '../storeDetails/storeDetail_view.dart';
// import 'string_manager.dart';
//
// class Routes
// {
//   static const String splashRoute = "/";
//   static const String onboarding = "/onboarding";
//   static const String loginRoute = "/login";
//   static const String registerRoute = "/register";
//   static const String forgetPasswordRoute = "forgetPassword/";
//   static const String mainRoute = "/main";
//   static const String storeDetailsRoute = "/storeDetails";
// }
//
// class RouteGenerator
// {
//   static Route<dynamic> getRoute(RouteSettings setting)
//   {
//     switch (setting.name)
//     {
//       case Routes.splashRoute:
//         return MaterialPageRoute(builder: (_)=> const SplashView());
//
//       case Routes.loginRoute:
//         return MaterialPageRoute(builder: (_)=> const LoginView());
//
//       case Routes.registerRoute:
//         return MaterialPageRoute(builder: (_)=> const RegisterView());
//
//       case Routes.mainRoute:
//         return MaterialPageRoute(builder: (_)=> const MainView());
//
//       case Routes.storeDetailsRoute:
//         return MaterialPageRoute(builder: (_)=> const StoreDetailsView());
//
//       case Routes.forgetPasswordRoute:
//         return MaterialPageRoute(builder: (_)=> const ForgetPasswordView());
//
//       case Routes.onboarding:
//         return MaterialPageRoute(builder: (_)=> const OnBoardingView());
//
//       default:
//         return undefienedRoute();
//     }
//   }
//
//   static  Route<dynamic> undefienedRoute()
//   {
//     return MaterialPageRoute(builder: (_) => Scaffold(
//       appBar: AppBar(title: const Text(StringManager.noRouteFound),),
//     ));
//   }
// }