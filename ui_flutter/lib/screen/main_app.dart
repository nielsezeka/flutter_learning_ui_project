import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../constants.dart';
import 'home_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: Container(
            width: 50,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Styles.bgColorBlack),
            ),
            child: Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {
                  // Xử lý sự kiện khi nhấn vào nút
                },
                child: const Icon(
                  Icons.search,
                  size: 35,
                ),
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Styles.bgColorBlack // Màu icon
              ),
          elevation: 10,
          backgroundColor: Styles.bgColorwhite,
          toolbarHeight: 60,
          title: Center(
            child: Column(
              children: [
                Text(
                  'Appbar',
                  style: Styles.title1
                      .copyWith(color: Colors.grey[500]), // Màu title
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Location',
                      style: Styles.content1, // Màu content
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: [
            Container(
              width: 50,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Styles.bgColorBlack),
              ),
              child: Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    // Xử lý sự kiện khi nhấn vào biểu tượng thông báo
                  },
                  child: const Icon(
                    Icons.notifications,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SalomonBottomBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              curve: Curves.easeOutExpo,
              unselectedItemColor: Styles.primaryColor,
              selectedItemColor: Styles.bgColorwhite,
              backgroundColor: Styles.bgColorBlack,
              items: [
                SalomonBottomBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text('Home'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.chat),
                  title: const Text('Messages'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.add),
                  title: const Text('Add'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.history),
                  title: const Text('History'),
                ),
                SalomonBottomBarItem(
                  icon: const Icon(Icons.person),
                  title: const Text('Profile'),
                ),
              ],
            ),
          ),
        ),
        // extendBody: true,
      ),
    );
  }
}
