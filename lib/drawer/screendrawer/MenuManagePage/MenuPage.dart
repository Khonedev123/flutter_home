import 'package:flutter/material.dart';
import 'package:flutter_home/drawer/screendrawer/MenuManagePage/CategoryPage.dart';
import 'package:flutter_home/drawer/screendrawer/MenuManagePage/unitPage.dart';
import 'package:flutter_home/register/screen/login.dart';

List item = [
  "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ຂໍ້ມູນຜູ້ສະໝອງ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ອັດຕາແລກປ່ຽນ"
  "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ຂໍ້ມູນຜູ້ສະໝອງ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ອັດຕາແລກປ່ຽນ"
   "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ຂໍ້ມູນຜູ້ສະໝອງ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ອັດຕາແລກປ່ຽນ"
  "ຂໍ້ມູນຫົວໜ່ວຍ",
  "ຂໍ້ມູນປະເພດສິນຄ້າ",
  "ຂໍ້ມູນສິນຄ້າ",
  "ຂໍ້ມູນຜູ້ສະໝອງ",
  "ພະນັກງານ",
  "ລູກຄ້າ",
  "ອັດຕາແລກປ່ຽນ"
];
List<double> sizeicon = [60, 80, 100];
List coloricon = [Colors.orange];
List icon = [
  Icon(
    Icons.ac_unit,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.category,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.folder,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.local_shipping,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person_add_alt,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.ac_unit,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.category,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.folder,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.local_shipping,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person_add_alt,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.ac_unit,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.category,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.folder,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.local_shipping,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person_add_alt,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.ac_unit,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.category,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.folder,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.local_shipping,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.person_add_alt,
    size: sizeicon[0],
    color: coloricon[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: sizeicon[0],
    color: coloricon[0],
  ),
];

List routePage = [
  UnitPage(),
  CategoryPage(),
  Text("ຍັງບໍ່ໄດ້ route"),
  Text("ຍັງບໍ່ໄດ້ route"),
  Text("ຍັງບໍ່ໄດ້ route"),
  Text("ຍັງບໍ່ໄດ້ route"),
  Text("ຍັງບໍ່ໄດ້ route"),
];

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  void showClick(index) {
    setState(() {
      MaterialPageRoute route =
          MaterialPageRoute(builder: (_) => routePage[index]);
      Navigator.of(context).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: item.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (c, idx) {
              return InkWell(
                onTap: () => showClick(idx),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  width: 80,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade700,
                      border: Border.all(color: Colors.blue, width: 2)),
                  child: Column(
                    children: [
                      icon[idx],
                      Spacer(),
                      Text(
                        '${item[idx]}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
