import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegicious/features/about/aboutscreen.dart';
import 'package:vegicious/features/splash/splashscreen.dart';

class PageRouter{
 static const String splash = '/';
 static const String about = '/about';
 // static const String login = '';
 // static const String home = '';
 // static const String search = '';
 // static const String itemInfo = '';

 static Route<dynamic> navigateTo(RouteSettings routeSettings){
    switch(routeSettings.name){
      case splash : return MaterialPageRoute(builder: (_) => const SplashScreen());
      case about : return MaterialPageRoute(builder: (_) => const AboutScreen());
      default: return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
 }
}