import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  @override
  _PrivacyPageState createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  bool sharePhone = false;
  bool shareEmail = false;
  bool shareRecommendations = false;
  bool shareName = true; // متغير للتحكم في حالة الاسم

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
          'Privacy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF336EA6), // لون AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Preferences',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Hi there, we don\'t want to keep any info that you\'re not comfortable sharing. We want our users to have 100% control of their information 100% of the time. Toggle below what you\'d like to share and not share bearing in mind the more you share with us the more tailored user experience you\'ll receive - thanks',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 20),
            _buildSwitchOption('Name', 'Ammar Ahmed', shareName,
                onChanged: (value) {
              setState(() {
                shareName = value;
              });
            }),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            _buildSwitchOption('Phone number', '01078654434', sharePhone,
                onChanged: (value) {
              setState(() {
                sharePhone = value;
              });
            }),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            _buildSwitchOption('Email', 'ammar21@gmail.com', shareEmail,
                onChanged: (value) {
              setState(() {
                shareEmail = value;
              });
            }),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            _buildSwitchOption(
              'Recommendations',
              '',
              shareRecommendations,
              additionalText:
                  'If we see you interact with something more, we will recommend more of that content.',
              onChanged: (value) {
                setState(() {
                  shareRecommendations = value;
                });
              },
            ),
            Divider(
              color: Color(
                0xffBDCAD6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Save preferences logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF336EA6), // لون الزر
                  ),
                  child: Text(
                    'Save preferences',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Cancel logic
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF336EA6), // لون النص في الزر
                  ),
                  child: Text('Cancel'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // بناء العنصر الذي يحتوي على الـ Switch لكل اختيار
  Widget _buildSwitchOption(String title, String value, bool isActive,
      {ValueChanged<bool>? onChanged, String? additionalText}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  if (value.isNotEmpty)
                    Text(
                      value,
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                ],
              ),
              Switch(
                value: isActive,
                activeColor: Color(0xff336EA6),
                onChanged: onChanged,
              ),
            ],
          ),
          if (additionalText != null && additionalText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                additionalText,
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
        ],
      ),
    );
  }
}
