import 'package:flutter/material.dart';
import 'package:graduation/screens/privacy.dart';

class Setting extends StatefulWidget {
  Setting({super.key});

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final _currentpasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Color(0xFF336EA6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8))),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_suggest,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30, left: 22),
            alignment: Alignment.topLeft,
            child: Text('  Account settings',
                style: TextStyle(
                    color: Color(0xFF144774),
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
          ),
          _buildContainer(
            leadingIcon: Icons.account_circle_rounded,
            leadingIconColor: Color.fromARGB(255, 141, 177, 216),
            title: 'Profile information',
            subtitle: 'Name, Email, Security',
            onPressed: () {},
          ),
          _buildContainer(
            leadingIcon: Icons.privacy_tip_outlined,
            leadingIconColor: Colors.white,
            backgroundColor: Color(0xFF9c93c0),
            title: 'Privacy',
            subtitle: 'Control your privacy',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPage()),
              );
            },
          ),
          _buildContainer(
            leadingIcon: Icons.lock_outline,
            leadingIconColor: Colors.white,
            backgroundColor: Color(0xFF8bc699),
            title: 'Change Password',
            subtitle: 'Change your current password',
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    height: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Change Password',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF233B55)),
                        ),
                        SizedBox(height: 30),
                        _buildPasswordField(
                            'Current Password', _currentpasswordController),
                        const SizedBox(height: 25),
                        _buildPasswordField(
                            'New Password', _passwordController),
                        const SizedBox(height: 25),
                        _buildPasswordField(
                            'Confirm New Password', _confirmPasswordController),
                        const SizedBox(height: 25),
                        ListTile(
                          leading: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '     Confirm     ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF233B55),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          trailing: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              '      Cancel      ',
                              style: TextStyle(
                                  color: Color(0xFF233B55),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFBDCAD6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
          Divider(
            color: Color(0xFF144774),
            thickness: 1,
          ),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 22),
            alignment: Alignment.topLeft,
            child: Text('  General',
                style: TextStyle(
                    color: Color(0xFF144774),
                    fontSize: 20,
                    fontWeight: FontWeight.w700)),
          ),
          _buildContainer(
            leadingIcon: Icons.favorite_border,
            leadingIconColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 243, 203, 173),
            title: 'Rate our App',
            subtitle: 'Rate & Review us',
            onPressed: () {},
          ),
          _buildContainer(
            leadingIcon: Icons.email_outlined,
            leadingIconColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 240, 204, 154),
            title: 'Send Feedback',
            subtitle: 'Share your thoughts',
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildPasswordField(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText:
          label == 'New Password' ? _obscurePassword : _obscureConfirmPassword,
      style: TextStyle(color: Color(0xFF233B55)),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Color(0xFF233B55)),
        prefixIcon: Icon(Icons.lock_outline_rounded, color: Color(0xFF233B55)),
        suffixIcon: IconButton(
          icon: Icon(
            (label == 'New Password'
                    ? _obscurePassword
                    : _obscureConfirmPassword)
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Color(0xFF233B55),
          ),
          onPressed: () {
            setState(() {
              if (label == 'New Password') {
                _obscurePassword = !_obscurePassword;
              } else {
                _obscureConfirmPassword = !_obscureConfirmPassword;
              }
            });
          },
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        } else if (label == 'Confirm New Password' &&
            value != _passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }

  Widget _buildContainer({
    required IconData leadingIcon,
    required String title,
    required String subtitle,
    required VoidCallback onPressed,
    Color leadingIconColor = Colors.black,
    Color backgroundColor = Colors.transparent,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 25, right: 25),
      padding: EdgeInsets.only(bottom: 25), // إضافة الحشوة السفلية
      height: 80, // تعديل الارتفاع لإضافة المساحة السفلية
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF233B55),
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(10), // إضافة حشوة للمستطيل
        leading: CircleAvatar(
          backgroundColor: backgroundColor,
          child: Icon(
            leadingIcon,
            color: leadingIconColor,
            size: 40.0, // تكبير الأيقونة
          ),
        ),
        title: Text(
          title,
          style:
              TextStyle(color: Color(0xFF233B55), fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Color(0xFF233B55), fontSize: 12),
        ),
        trailing: IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.arrow_forward_ios, color: Color(0xFF233B55))),
      ),
    );
  }
}
