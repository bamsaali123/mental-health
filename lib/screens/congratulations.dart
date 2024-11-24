import 'package:flutter/material.dart';
import 'package:graduation/screens/homeuser_page.dart';

class Congratulations extends StatelessWidget {
  Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF233B55)),
            ),
            SizedBox(height: 10),
            Text(
              'Your Appiontment is Success',
              style: TextStyle(fontSize: 15, color: Color(0xFF233B55)),
            ),
            SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeUserPage()), // استبدال HomeUserPage بالصفحة المراد الانتقال إليها
    );
              },
              child: Text('     Back     ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 22)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF336EA6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
