import 'package:flutter/material.dart';

class MenuItem {
  final String menuName;
  final IconData menuIcon;

  MenuItem({
    required this.menuName,
    required this.menuIcon,
  });
}

List<MenuItem> menuItems = [
  MenuItem(
    menuName: 'Home',
    menuIcon: Icons.home,
  ),
  MenuItem(
    menuName: 'Cart',
    menuIcon: Icons.local_grocery_store,
  ),
  MenuItem(
    menuName: 'My Account',
    menuIcon: Icons.account_box,
  ),
  MenuItem(
    menuName: 'Notifications',
    menuIcon: Icons.notifications,
  ),
  MenuItem(
    menuName: 'Payments',
    menuIcon: Icons.payment,
  ),
  MenuItem(
    menuName: 'Settings',
    menuIcon: Icons.settings,
  ),
];

List<Color> color = [
  Colors.indigo.shade50,
  Colors.indigo.shade100,
  Colors.indigo.shade200,
  Colors.indigo.shade300,
  Colors.indigo.shade400,
  Colors.indigo.shade500,
  Colors.indigo.shade600,
  Colors.indigo.shade700,
  Colors.indigo.shade800,
  Colors.indigo.shade900,
];
