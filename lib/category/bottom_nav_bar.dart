import 'package:flutter/material.dart';

import 'package:graduation/screens/categorypage.dart';
import 'package:graduation/screens/homeuser_page.dart';

import 'package:graduation/screens/book_page.dart';
import 'package:graduation/screens/profilepage.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 2; // الفهرس الحالي للعنصر النشط

  final List<Widget> _screens = [
    HomeUserPage(),
    CategoryPage(),
    BookPage(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // تحديث الفهرس الحالي
    });

    // التنقل إلى الصفحة المحددة
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => _screens[index],
      ),
      (Route<dynamic> route) => false, // إزالة كل الصفحات السابقة
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xff336EA6),
      type: BottomNavigationBarType.fixed,
      iconSize: 28,
selectedItemColor: Colors.white.withOpacity(0.7),
      unselectedItemColor: Colors.white.withOpacity(0.7),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
      ), // النص المختار
      unselectedLabelStyle: TextStyle(fontSize: 14),
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          label: 'Book',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}
