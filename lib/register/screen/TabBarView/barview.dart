import 'package:flutter/material.dart';

class TabBarViewExample extends StatefulWidget {
  const TabBarViewExample({super.key});

  @override
  State<TabBarViewExample> createState() => _TabBarViewExampleState();
}

class _TabBarViewExampleState extends State<TabBarViewExample> {
  final List<String> tabTitles = [
    'Home',
    'Favorites',
    'Settings',
    'Profile',
    'Messages'
  ];
  final List<IconData> tabIcons = [
    Icons.home,
    Icons.star,
    Icons.settings,
    Icons.person,
    Icons.message,
  ];

  Widget barView() {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Example'),
          bottom: TabBar(
            isScrollable: true, // Enable scrolling if there are many tabs
            tabs: List.generate(
              tabTitles.length,
              (index) => Tab(
                icon: Icon(tabIcons[index]),
                text: tabTitles[index],
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Home Content')),
            Center(child: Text('Favorites Content')),
            Center(child: Text('Settings Content')),
            Center(child: Text('Profile Content')),
            Center(child: Text('Messages Content')),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return barView();
  }
}
