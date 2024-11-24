import 'package:flutter/material.dart';
import 'package:graduation/api-services/signupservices.dart';

import 'package:graduation/screens/signin.dart';
import 'package:graduation/screens/welcome_page.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: const Color(0xFF336EA6),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70.0),
                      topRight: Radius.circular(70.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Text(
                'Let\'s start with \nSign up',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 150), // Adjust padding as needed
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 44),
                shrinkWrap: true,
                children: [
                  Container(
                    width: 341,
                    decoration: BoxDecoration(
                      color: Color(0xFF336EA6),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.white,
                        width: 8,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset('assets/Group 13994.png'),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Markaz ElAmal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            _buildTextField('Name', Icons.person_outline_outlined),
                            const SizedBox(height: 10),
                            _buildTextField('Phone Number', Icons.phone),
                            const SizedBox(height: 10),
                            _buildTextField('Email', Icons.email_outlined, isEmail: true),
                            const SizedBox(height: 10),
                            _buildPasswordField('Password', _passwordController),
                            const SizedBox(height: 10),
                            _buildPasswordField('Confirm Password', _confirmPasswordController),
                            const SizedBox(height: 20),
                            _isLoading
                                ? CircularProgressIndicator()
                                : ElevatedButton(
                                    onPressed: () async {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() {
                                          _isLoading = true;
                                        });

                                        final apiService = ApiService();

                                        final response = await apiService.signup(
                                          'name',
                                          'phone',
                                          'email',
                                          _passwordController.text,
                                        );
                                        setState(() {
                                          _isLoading = false;
                                        });

                                        if (response != null) {
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => Welcome_Page()));
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text('Registration failed, please try again.'),
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    child: Text('Sign Up',
                                        style: TextStyle(color: Color(0xFF233B55))),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 0.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Have already an account?',
              style: TextStyle(color: Color(0xFF336EA6)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Signin()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(color: Color(0xFF233B55)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF336EA6),
    );
  }

  Widget _buildTextField(String label, IconData icon, {bool isEmail = false}) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(icon, color: Colors.white),
        filled: true,
        fillColor: Color(0xFF336EA6),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        } else if (isEmail && !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }

  Widget _buildPasswordField(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      obscureText: label == 'Password' ? _obscurePassword : _obscureConfirmPassword,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
        suffixIcon: IconButton(
          icon: Icon(
            (label == 'Password' ? _obscurePassword : _obscureConfirmPassword)
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              if (label == 'Password') {
                _obscurePassword = !_obscurePassword;
              } else {
                _obscureConfirmPassword = !_obscureConfirmPassword;
              }
            });
          },
        ),
        filled: true,
        fillColor: Color(0xFF336EA6),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        } else if (label == 'Confirm Password' &&
            value != _passwordController.text) {
          return 'Passwords do not match';
        }
        return null;
      },
    );
  }
}
