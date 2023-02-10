import 'package:flutter/material.dart';
import 'package:cash_app_interface/cash_app_home.dart';
import 'package:cash_app_interface/ca_state.dart';
import 'package:cash_app_interface/AppStateModel.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({super.key});

  AppStateContainerState asc = AppStateContainerState();
  AppState state = AppState();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Cash App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.blueGrey[900]
      ),
      home:  AppStateContainer(child: CashHomePage(), state:state),
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//   AppStateContainerState asc = AppStateContainerState();
//   AppState state = AppState();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Cash App Demo',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           brightness: Brightness.dark,
//           scaffoldBackgroundColor: Colors.blueGrey[900]
//       ),
//       home:  AppStateContainer(child: CashHomePage(), state:state),
//     );
//   }
// }