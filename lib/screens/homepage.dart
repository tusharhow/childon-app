import 'package:childon/screens/about.dart';
import 'package:childon/screens/social.dart';
import 'package:flutter/material.dart';

import 'explore.dart';
import 'feed.dart';
import 'notification.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  final screens = [
    const Explore(),
    Social(),
    const Feed(),
    const NotificationScreen(),
    const AboutMe(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        // key: scaffoldKey,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.black,
                ),
                title: Text(
                  'Explore',
                ),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/team.png'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Social'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/feed.png'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Feed'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/noti.png'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Notifications'),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/user.png',
                  ),
                  color: Colors.black,
                  size: 30,
                ),
                title: Text('Me'),
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.black,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showUnselectedLabels: true,
          unselectedFontSize: 15,
          unselectedIconTheme: IconThemeData(color: Colors.black),
          iconSize: 45,
          onTap: (index) => setState(() {
            _selectedIndex = index;
          }),
          // elevation: 5
        ),
        body: screens[_selectedIndex]);
  }
}
