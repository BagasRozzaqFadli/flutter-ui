import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const BottomNav({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.contacts), label: 'Contacts'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
      ],
    );
  }
}
