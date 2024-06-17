import 'package:flutter/material.dart';
import 'package:movie_guidlist_new/modules/favories/favories_page.dart';
import 'package:movie_guidlist_new/modules/home_page/home_page.dart';
import 'package:movie_guidlist_new/modules/profile_account/profile_account.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    FavoriesPage(),
    ProfileAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.shifting,
          iconSize: 35,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'หน้าหลัก',
                backgroundColor: Colors.blueGrey[900]),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'รายการโปรด',
                backgroundColor: Colors.blueGrey[900]),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'บัญชี',
                backgroundColor: Colors.blueGrey[900]),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.dangerous_outlined),
            //     label: 'Scarp',
            //     backgroundColor: Colors.blueGrey[900]),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
