import 'package:budget_wala_man/login_page.dart';
import 'package:budget_wala_man/opt_page.dart';
import 'package:budget_wala_man/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: SplashScreen(),
    
    routes: {
      '/':(context) => SplashScreen(),
      '/loginpage':(context) => LoginPage(),
      '/otppage':(context) => OTPPage(),
    },
    
  ));
}

