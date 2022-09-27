import 'package:flutter/material.dart';
import 'package:flutter_order_food_nvchung/presentation/features/sign_in/sign_in_page.dart';
import 'package:flutter_order_food_nvchung/presentation/features/sign_up/sign_up_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'common/constants/variable_constant.dart';
import 'data/datasources/local/cache/app_cache.dart';
import 'data/datasources/remote/api_request.dart';
import 'presentation/features/cart/cart_page.dart';
import 'presentation/features/home/home_page.dart';
import 'presentation/features/splash/splash_page.dart';

void main() {
  runApp(const MyApp());

  AppCache.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        fontFamily: "QuickSan",
        primarySwatch: Colors.blue,
      ),
      routes: {
        VariableConstant.SIGN_IN_ROUTE: (context) => SignInPage(),
        VariableConstant.SIGN_UP_ROUTE: (context) => SignUpPage(),
        VariableConstant.HOME_ROUTE: (context) => HomePage(),
        VariableConstant.SPLASH_ROUTE: (context) => SplashPage(),
        VariableConstant.CART_ROUTE: (context) =>CartPage(),
      },
      initialRoute: VariableConstant.SPLASH_ROUTE,
    );
  }
}
