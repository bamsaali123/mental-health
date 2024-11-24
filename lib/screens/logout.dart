import 'package:flutter/material.dart';

class LogoutScreen extends StatefulWidget {
  @override
  _LogoutScreenState createState() => _LogoutScreenState();
}

class _LogoutScreenState extends State<LogoutScreen> {
  bool logoutAllDevices = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back, // استخدام أيقونة السهم للرجوع
            color: Colors.white, // اللون الأبيض للأيقونة
          ),
        ),
        backgroundColor: Color(0xff336EA6),
        title: Center(
          child: Text(
            'logout',
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 225, 217, 217),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, 'privacy'); // الانتقال إلى صفحة الإعدادات
              },
              icon: Icon(
                Icons.settings, // أيقونة الإعدادات
                color: Colors.white, // اللون الأبيض للأيقونة
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(
                color: Color(0xff233B55),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/image.png',
              height: 150,
            ),
            SizedBox(height: 10),
            Text(
              'Ammar Ahmed',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff233B55),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xff144774)),
                width: double.infinity,
                height: 350,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'See You Soon',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: 'Oleo Script Swash Caps',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'You are about to logout.\nAre you sure this is what you want?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Cancel action
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                            // Confirm logout action
                          },
                          child: Text(
                            'Confirm Logout',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff233B55),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ],
                    ),
                    CheckboxListTile(
                      activeColor: Colors.white,
                      checkColor: Color(0xff144774),
                      title: Text(
                        'Logout from all devices',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      value: logoutAllDevices,
                      onChanged: (newValue) {
                        setState(() {
                          logoutAllDevices = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
