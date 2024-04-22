import 'package:cricket_mania/pages/cricket_mania.dart';
import 'package:cricket_mania/pages/login_page.dart';
import 'package:cricket_mania/pages/main_screen.dart';
import 'package:cricket_mania/pages/view_score.dart';
import 'package:cricket_mania/utils/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Strings.loginScreen,
      routes: {
        Strings.loginScreen: (context) => const LoginScreen(),
        Strings.homeScreen: (context) => const HomeScreen(),
        Strings.mainScreen: (context) => const MainScreen(),
        Strings.viewScore: (context) => const ViewScore(),
      },
    );
  }
}

