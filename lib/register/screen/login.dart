import 'package:flutter/material.dart';
import 'package:flutter_home/HomePage.dart';
import 'package:flutter_home/drawer/drawerbar.dart';
import 'package:flutter_home/register/screen/TabBarView/barview.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

Widget MenuBar() {
  return TabBar(
    tabs: [
      Tab(),
    ],
  );
}

List items = [
  "ຕັ້ງຄ່າ",
  "ເຊື່ອມຕໍ່ກັບຖານຂໍ້ມູນ",
  "ເຊື່ອມຕໍ່ INTERNET",
];
List item = ["ຕັ້ງຄ່າ", "ເຊື່ອມຕໍ່ກັບຖານຂໍ້ມູນ", "ເຊື່ອມຕໍ່ INTERNET"];
List icon = [
  Icon(
    Icons.settings,
    color: Colors.amber.shade900,
  ),
  Icon(
    Icons.storage,
    color: Colors.amber.shade900,
  ),
  Icon(
    Icons.wifi,
    color: Colors.amber.shade900,
  ),
];
Widget PopupMenu() {
  return PopupMenuButton(
      itemBuilder: (_) => [
            PopupMenuItem(
                child: ListTile(
              leading: icon[0],
              title: Text('${item[0]}'),
              // trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            )),
            PopupMenuItem(
                child: ListTile(
              leading: icon[1],
              title: Text('${item[1]}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            )),
            PopupMenuItem(
                child: ListTile(
              leading: icon[2],
              title: Text('${item[2]}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            )),
          ]);
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
                onTap: () {
                  Show();
                },
              ),
            ]);
  }

  void Show() {
    showDialog(
        context: context,
        builder: (c) {
          return AlertDialog(
            title: Text("ສະແດງຄ່າ"),
            content: HomePage(),
          );
        });
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
        Container(
          child: Center(
            child: Text(
              "Hello",
            ),
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Search",
            ),
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Info",
            ),
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Profile",
            ),
          ),
        ),
        Container(
          child: Center(
            child: Text(
              "Settings",
            ),
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
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              icon: tabIcons[0],
              child: Text(tabTitles[0]),
            ),
            Tab(
              icon: tabIcons[1],
              child: Text(tabTitles[1]),
            ),
            Tab(
              icon: tabIcons[2],
              child: Text(tabTitles[2]),
            ),
            Tab(
              icon: tabIcons[3],
              child: Text(tabTitles[3]),
            ),
            Tab(
              icon: tabIcons[4],
              child: Text(tabTitles[4]),
            ),
          ]),
          actions: [
            PopupMenu(),
            // MenuPopup(),
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
            NavigationDestination(
                icon: Icon(Icons.arrow_back), label: "ເຂົ້າສູ່ລະບົບ"),
            NavigationDestination(icon: Icon(Icons.message), label: "ຂໍ້ຄວາມ"),
            NavigationDestination(
                icon: Icon(Icons.more_vert), label: "ບໍລິການ"),
          ],
        ),
        body: routetabBarview(),
      ),
    );
  }
}
