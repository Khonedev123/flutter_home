import 'package:flutter/material.dart';
import 'package:flutter_home/drawer/drawerbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget MenuPopup() {
    return PopupMenuButton<String>(
        itemBuilder: (_) => [
              PopupMenuItem(
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                      size: 25,
                    ),
                    title: Text("ຕັ້ງຄ່າ"),
                  ),
                ),
                onTap: () {},
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.blue,
                    size: 25,
                  ),
                  title: Text("ຂໍ້ຄວາມ"),
                ),
                onTap: () {},
              ),
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                    size: 25,
                  ),
                  title: Text("ບໍລິການ"),
                ),
                onTap: () {},
              ),
            ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [MenuPopup()],
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
