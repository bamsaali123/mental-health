import 'package:flutter/material.dart';
import 'package:graduation/category/date_time_selection.dart';
import 'package:graduation/model/doctor_profile_model.dart';
import 'package:graduation/screens/payment_options_page.dart';

class DoctorProfileWidget extends StatelessWidget {
  final DoctorProfileModel doctor;

  DoctorProfileWidget({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff336EA6),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView( // اجعل المحتوى قابلًا للتمرير
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 130,
                    top: 19,
                    child: Image.asset(
                      doctor.imageUrl,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xff336EA6),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            '${doctor.experience} of experience',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 54,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Dr: ${doctor.name}',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          doctor.category,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blueGrey,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[700]),
                            SizedBox(width: 5),
                            Text(
                              '${doctor.rating}',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          doctor.description,
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        // Adding the "Book a Date" and "Select a Time" inside the white container
                        DateTimeSelection(),
                        SizedBox(height: 50),
                        Center(
                          child: Material(
                            elevation: 3,
                            borderRadius: BorderRadius.circular(12),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PaymentOptionsPage()),
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 24),
                              ),
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
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
          ],
        ),
      ),
    );
  }
}
