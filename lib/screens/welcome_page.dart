import 'package:flutter/material.dart';

import 'package:graduation/screens/homeuser_page.dart';

class Welcome_Page extends StatelessWidget {
  Welcome_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: 200,
              color: Color(0xFF336EA6),
            ),
            SizedBox(height: 20),
            Text(
              'Congratulations',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF336EA6)),
            ),
            SizedBox(height: 10),
            Text(
              'Your Registration is Successful',
              style: TextStyle(fontSize: 18, color: Color(0xFF336EA6)),
            ),
            SizedBox(height: 5),
            Text(
              'Welcome to our app',
              style: TextStyle(fontSize: 18, color: Color(0xFF336EA6)),
            ),
            SizedBox(height: 70),
            Center(
              child: Material(
                elevation: 0, // تقليل القيمة إلى 0 لإزالة الظل
                borderRadius: BorderRadius.circular(12),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeUserPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff336EA6),
                    foregroundColor: Colors.white,
                    side: BorderSide(
                        color: const Color.fromARGB(186, 255, 255, 255),
                        width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  ),
                  child: Text(
                    "Go ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
