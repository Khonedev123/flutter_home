import 'package:flutter/material.dart';
import 'package:flutter_home/drawer/drawerbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      drawer: DrawerBar(),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "ໜ້າຫຼັກ"),
          NavigationDestination(
              icon: Icon(Icons.arrow_back), label: "ເຂົ້າສູ່ລະບົບ"),
          NavigationDestination(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
          NavigationDestination(icon: Icon(Icons.more_vert), label: "ບໍລິການ"),
        ],
      ),
    );
  }
}
