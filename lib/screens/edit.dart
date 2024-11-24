import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EditPage extends StatelessWidget {
  EditPage({super.key}) {
    // تعيين القيم الافتراضية للكونترولرز
    nameController.text = "Ammar Ahmed";
    phoneController.text = "01078654434";
    emailController.text = "ammar21@gmail.com";
  }

  GlobalKey<FormState> formstate = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/arrowback.png',
            width: 10,
          ),
        ),
        backgroundColor: Color(0xff336EA6),
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            'Edit Profile',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formstate,
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
                    style: TextStyle(fontSize: 16, color: Color(0xff233B55)),
                  ),
                  TextFormField(
                    controller:
                        nameController, // إضافة الكونترولر للاسم مع القيمة الافتراضية
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline),
                      prefixIconColor: Color(0xff233B55),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(fontSize: 16, color: Color(0xff233B55)),
                  ),
                  TextFormField(
                    controller:
                        phoneController, // إضافة الكونترولر لرقم الهاتف مع القيمة الافتراضية
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone_outlined),
                      prefixIconColor: Color(0xff233B55),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16, color: Color(0xff233B55)),
                  ),
                  TextFormField(
                    controller:
                        emailController, // إضافة الكونترولر للبريد الإلكتروني مع القيمة الافتراضية
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Color(0xff233B55),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}