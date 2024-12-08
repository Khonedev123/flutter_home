import 'package:flutter/material.dart';
import 'package:flutter_home/drawer/screendrawer/MenuManagePage/MenuPage.dart';
import 'package:flutter_home/drawer/screendrawer/shop.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Khone123",
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: Text(
              "Khonedev1234@gmail.com",
              style: TextStyle(fontSize: 20),
            ),
            currentAccountPicture: CircleAvatar(
              child: Container(
                width: 80,
                height: 80,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/pic4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg1.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.folder_rounded,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ຈັດການຖາຂໍ້ມູນ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).pop();
              MaterialPageRoute route=MaterialPageRoute(builder: (context)=>MenuPage());
              Navigator.of(context).push(route);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shop_rounded,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ຂາຍ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ສັ່ງຊື່ສິນຄ້າ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShopScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.file_download,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ນຳເຂົ້າສິນຄ້າ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    "8",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ຄົ້ນຫາ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.bar_chart,
              color: Colors.orange,
              size: 30,
            ),
            title: Text(
              "ລາຍງານ",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
