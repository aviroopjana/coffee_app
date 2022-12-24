import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottom_navbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const BottomNavBar(),
        theme: ThemeData(brightness: Brightness.dark));
  }
}
