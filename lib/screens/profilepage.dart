import 'package:flutter/material.dart';
import 'package:graduation/category/card_wedgit.dart';
import 'package:graduation/model/card_model.dart';
import 'package:graduation/category/bottom_nav_bar.dart';
// Corrected the import name

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff233B55),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/image.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Ammar Ahmed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff233B55),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CardWedgit(
              CardModel(
                image: 'assets/history.png',
                title: 'History',
                page: 'history_details',
              ),
              onTap: () {
                Navigator.pushNamed(context, 'history_details');
              },
            ),
            CardWedgit(
              CardModel(
                image: 'assets/details.png',
                title: 'Profile Details', // Fixed the spelling
                page: 'profiledetails',
              ),
              onTap: () {
                Navigator.pushNamed(context, 'profiledetails');
              },
            ),
            CardWedgit(
              CardModel(
                image: 'assets/setting.png',
                title: 'Settings',
                page: 'Settings',
              ),
              onTap: () {
                Navigator.pushNamed(context, 'Settings');
              },
            ),
            CardWedgit(
              CardModel(
                image: 'assets/help.png',
                title: 'Help',
                page: 'help',
              ),
              onTap: () {
                Navigator.pushNamed(context, 'help');
              },
            ),
            CardWedgit(
              CardModel(
                image: 'assets/logout.png',
                title: 'Logout',
                page: 'logout',
              ),
              onTap: () {
                Navigator.pushNamed(context, 'logout');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(), // Move it here
    );
  }
}
