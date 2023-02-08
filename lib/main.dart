import 'package:flutter/material.dart';
import 'package:cash_app_interface/cash_app_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cash App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CashHomePage(),
    );
  }
}

