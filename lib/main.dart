import 'package:budget_wala_man/home_page.dart';
import 'package:budget_wala_man/login_page.dart';
import 'package:budget_wala_man/otp_page.dart';
import 'package:budget_wala_man/sign_up_page.dart';
import 'package:budget_wala_man/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: SplashScreen(),
    
    routes: {
      '/':(context) => SplashScreen(),
      '/loginpage':(context) => LoginPage(),
      '/otppage':(context) => OTPPage(),
      '/homepage':(context) => HomePage(),
      '/signup':(context) => SignUp(),
       
    },
    
  ));
}

