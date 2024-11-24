import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  // دالة لفتح البريد الإلكتروني
  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'ranasamy590@gmail.com', // عنوان البريد الإلكتروني
      query: 'subject=App Support Request', // الموضوع الافتراضي
    );

    // تأكد من أن الرابط يمكن فتحه
    if (await launchUrl(emailUri)) {
      // افتح الرابط
    } else {
      // التعامل مع الخطأ إذا كان هناك مشكلة
      print('Could not launch $emailUri');
    }
  }

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
        title: Text(
          'Help & Support',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff336EA6),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            'How can we help you?',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Here you can find answers to frequently asked questions or contact our support team for further assistance.',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          SizedBox(height: 20),

          // قسم الأسئلة الشائعة (FAQ)
          ExpansionTile(
            title: Text('How to reset my password?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'To reset your password, go to the settings page and click on "Reset Password". You will receive an email with instructions.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to update my profile information?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'You can update your profile information by going to the "Edit Profile" section in the app and making the necessary changes.',
                ),
              ),
            ],
          ),
          ExpansionTile(
            title: Text('How to contact support?'),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'If you need further assistance, please click on the "Contact Support" button below to send us an email or call our support hotline.',
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          // زر الاتصال بالدعم
          ElevatedButton.icon(
            onPressed: _launchEmail, // الاتصال بدالة فتح البريد الإلكتروني
            icon: Icon(
              Icons.email,
              color: Colors.white, // تغيير لون الأيقونة إلى الأبيض
            ),
            label: Text(
              'Contact Support',
              style:
                  TextStyle(color: Colors.white), // تغيير لون النص إلى الأبيض
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff336EA6), // خلفية الزر
            ),
          ),
        ],
      ),
    );
  }
}
