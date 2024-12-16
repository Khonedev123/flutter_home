import 'package:flutter/material.dart';
import 'package:flutter_home/HomePage.dart';
import 'package:flutter_home/drawer/drawerbar.dart';
import 'package:flutter_home/drawer/screendrawer/MenuManagePage/MenuPage.dart';
import 'package:flutter_home/register/screen/TabBarView/Search.dart';
import 'package:flutter_home/register/screen/test.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Method to show dialog for name and last name input
  void _showInputDialog() {
    final TextEditingController namaController = TextEditingController();
    final TextEditingController lnameController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("ປ້ອນຂໍໍໍ້ມູນ"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(labelText: "Nama"),
              ),
              TextField(
                controller: lnameController,
                decoration: InputDecoration(labelText: "Last Name"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                String nama = namaController.text;
                String lname = lnameController.text;
                print('Nama: $nama, Last Name: $lname');
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("ຍັນຢັນ"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("ຍົກເລີກ"),
            ),
          ],
        );
      },
    );
  }

  Widget PopupMenu() {
    return PopupMenuButton(
      itemBuilder: (_) => [
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.settings, color: Colors.amber.shade900),
            title: Text("ຕັ້ງຄ່າ"),
            onTap: () {},
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.message, color: Colors.amber.shade900),
            title: Text("ຂໍ້ຄວາມ"),
            onTap: () {
              // Call input dialog for name and last name
              _showInputDialog();
            },
          ),
        ),
        PopupMenuItem(
          child: ListTile(
            leading: Icon(Icons.storage, color: Colors.amber.shade900),
            title: Text("ບໍລິການ"),
            onTap: () {
              Show();
            },
          ),
        ),
      ],
    );
  }

  void Show() {
    showDialog(
      context: context,
      builder: (c) {
        return AlertDialog(
          title: Text("ສະແດງຄ່າ"),
          content: HomePage(),
        );
      },
    );
  }

  final List<String> tabTitles = [
    'Home',
    'Favorites',
    'Settings',
    'Profile',
    'Messages'
  ];

  final List<Icon> tabIcons = [
    Icon(Icons.home),
    Icon(Icons.favorite),
    Icon(Icons.settings),
    Icon(Icons.person),
    Icon(Icons.message),
  ];

  Widget routetabBarview() {
    return TabBarView(
      children: [
        MenuPage(),
        CounterScreen(),
        Khone(),
        Container(
          child: Center(
            child: Text("Profile"),
          ),
        ),
        Container(
          child: Center(
            child: Text("Settings"),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: tabIcons[0], child: Text(tabTitles[0])),
              Tab(icon: tabIcons[1], child: Text(tabTitles[1])),
              Tab(icon: tabIcons[2], child: Text(tabTitles[2])),
              Tab(icon: tabIcons[3], child: Text(tabTitles[3])),
              Tab(icon: tabIcons[4], child: Text(tabTitles[4])),
            ],
          ),
          actions: [
            PopupMenu(),
          ],
          title: Text(
            "The Cafa KhoneDev",
            style: GoogleFonts.protestRevolution(
              textStyle: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
        drawer: DrawerBar(),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "ໜ້າຫຼັກ"),
            NavigationDestination(icon: Icon(Icons.arrow_back), label: "ເຂົ້າສູ່ລະບົບ"),
            NavigationDestination(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
            NavigationDestination(icon: Icon(Icons.more_vert), label: "ບໍລິການ"),
          ],
        ),
        body: routetabBarview(),
      ),
    );
  }
}
