import 'package:flutter/material.dart';
import 'package:flutter_home/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
          )
        ),
      ),
      home: HomePage(),
    );
  }
}

