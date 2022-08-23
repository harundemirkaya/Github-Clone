import 'package:flutter/material.dart';
import 'package:gitapp/pages/dashboard/dashboard_page.dart';
import 'package:gitapp/themes/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: primary,
          backgroundColor: dark,
          scaffoldBackgroundColor: dark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: dark,
          ),
          appBarTheme: const AppBarTheme(
              elevation: 0.0,
              color: dark,
              iconTheme: IconThemeData(color: primary)),
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: white),
            headline6: TextStyle(fontWeight: FontWeight.bold),
          )),
      home: const DashboardPage(),
    );
  }
}
