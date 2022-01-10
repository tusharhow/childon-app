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
                icon: ImageIcon(
                  AssetImage('assets/search_logo.ico'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Explore',
                    style: TextStyle(color: Colors.black, fontSize: 13)),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/social_logo.ico'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Social',
                    style: TextStyle(color: Colors.black, fontSize: 13)),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/feed_logo.ico'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Feed',
                    style: TextStyle(color: Colors.black, fontSize: 13)),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/notification_logo.ico'),
                  size: 30,
                  color: Colors.black,
                ),
                title: Text('Notifications',
                    style: TextStyle(color: Colors.black, fontSize: 11)),
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/me_logo.ico',
                  ),
                  color: Colors.black,
                  size: 30,
                ),
                title: Text(
                  'Me',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
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
