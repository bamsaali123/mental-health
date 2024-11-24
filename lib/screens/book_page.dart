import 'package:flutter/material.dart';
import 'package:graduation/category/bottom_nav_bar.dart';

import 'package:graduation/category/time_list_view.dart';

class BookPage extends StatelessWidget {
 // final List<String> availableDoctors = ['Dr. Osama Ali', 'Dr. Sara Selem'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Select Date And Time',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff336EA6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'October, 2023',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff233B55),
              ),
            ),
            SizedBox(height: 8),
            TimeListView(),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
