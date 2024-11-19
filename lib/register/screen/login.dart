import 'package:flutter/material.dart';
import 'package:flutter_home/drawer/drawerbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBar(),
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
            Image.asset('assets/images/pic1.jpg'),
          ],
        ),
      ),
    );
  }
}
