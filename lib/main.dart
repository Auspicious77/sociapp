import 'package:flutter/material.dart';
import 'package:sociapp/pages/login_page.dart';
import 'package:sociapp/pages/register_page.dart';
import 'package:sociapp/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sociapp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'login',
      routes: appRoutes,
      // home: LoginPage(),
    );
  }
}
