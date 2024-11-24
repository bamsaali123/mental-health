import 'package:flutter/material.dart';
import 'package:graduation/model/profiledetails_model.dart';

class ProfileDetails extends StatelessWidget {
  ProfileDetails();
  final ProfiledetailsModel profiledetailsModel = ProfiledetailsModel(
      name: 'Ammar Ahmed', phone: '01078645534', email: 'ammar21@gmail.com');
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
            Icons.arrow_back, // استخدام الأيقونة الافتراضية للسهم
            color: Colors.white, // تحديد اللون الأبيض
          ),
        ),
        backgroundColor: Color(0xff336EA6),
        title: Center(
          child: Text(
            'Profile Details',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'edit');
              },
              child: Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/image.png',
                height: 150,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Full Name',
              style: TextStyle(
                color: Color(0xffBDCAD6),
                fontSize: 20,
              ),
            ),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            Text(
              profiledetailsModel.name,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Phone number',
              style: TextStyle(
                color: Color(0xffBDCAD6),
                fontSize: 20,
              ),
            ),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            Text(
              profiledetailsModel.phone,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email',
              style: TextStyle(
                color: Color(0xffBDCAD6),
                fontSize: 20,
              ),
            ),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            Text(
              profiledetailsModel.email,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
