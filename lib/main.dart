import 'package:flutter/material.dart';
import 'package:cash_app_interface/cash_app_home.dart';
import 'package:cash_app_interface/ca_state.dart';
import 'package:cash_app_interface/AppStateModel.dart';

void main() {
  runApp(CashApp());
}



class CashApp extends StatelessWidget {
  CashApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("myapp build");
    return  AppStateContainer(child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cash App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey[900]
      ),
      home:  CashHomePage()),
    );
  }
}
