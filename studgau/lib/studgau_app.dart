import 'package:flutter/material.dart';
import 'package:studgau/navigation/navigation.dart';
import 'package:studgau/theme/theme.dart';


class StudApp extends StatelessWidget {
  const StudApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const NavigationExample(),
    );
  }
}