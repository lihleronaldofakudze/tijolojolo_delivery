import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tijolojolo_delivery/screens/favorite_screen.dart';
import 'package:tijolojolo_delivery/screens/home_screen.dart';
import 'package:tijolojolo_delivery/screens/notifications_screen.dart';
import 'package:tijolojolo_delivery/screens/profile_screen.dart';

class CoreScreen extends StatefulWidget {
  const CoreScreen({Key? key}) : super(key: key);

  @override
  State<CoreScreen> createState() => _CoreScreenState();
}

class _CoreScreenState extends State<CoreScreen> {
  @override
  Widget build(BuildContext context) {
    final _bottomNavigation = [
      const HomeScreen(),
      const FavoriteScreen(),
      const NotificationsScreen(),
      const ProfileScreen()
    ];
    int _selectedIndex = 0;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          FontAwesomeIcons.cartShopping,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _bottomNavigation[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            FontAwesomeIcons.house,
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.heart,
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.cartShopping,
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.bell,
            size: 30,
          ),
          Icon(
            FontAwesomeIcons.user,
            size: 30,
          ),
        ],
      ),
    );
  }
}
