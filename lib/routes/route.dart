import 'package:flutter/material.dart';
import 'package:sociapp/pages/home_page.dart';
import 'package:sociapp/pages/login_page.dart';
import 'package:sociapp/pages/register_page.dart';

Map<String, WidgetBuilder> appRoutes = {
  'register': (context) => RegisterPage(),
  'login': (context) => LoginPage(),
  'home': (context) => const HomePage(),

};
