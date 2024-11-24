import 'package:flutter/material.dart';
import 'package:graduation/model/doctor_category_model.dart';
import 'package:graduation/screens/doctor_adel_profile.dart';
import 'package:graduation/screens/doctor_alaa_profile.dart';
import 'package:graduation/screens/doctor_fatema_profile.dart';
import 'package:graduation/screens/doctor_may_profile.dart';
import 'package:graduation/screens/doctor_msaad_profile.dart';
import 'package:graduation/screens/doctor_osama_profile.dart';
import 'package:graduation/screens/doctor_sara_profile.dart';

class DoctorItem extends StatelessWidget {
  final DoctorCategoryModel doctor;

  DoctorItem({
    required this.doctor,
  });

  Map<String, Widget> doctorRoutes = {
    'Dr. Osama Ali': DoctorOsamaProfile(),
    'Dr. Sara Selem': DoctorSaraProfile(),
    'Dr. Alaa Mohamed': DoctorAlaaProfile(),
    'Dr. Adel Mohamed': DoctorAdelProfile(),
    'Dr. Fatema Ahmed': DoctorFatemaProfile(),
    'Dr. May Mourad': DoctorMayProfile(),
    'Dr. Mohamed Saad': DoctorMohamedProfile(),

 
  };

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final doctorName = doctor.name; 
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                doctorRoutes[doctorName] ?? DoctorOsamaProfile(),
          ),
        );
      },
      child: Container(
        height: 140,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xff336EA6),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          doctor.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          doctor.category,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 9),
                        Container(
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white, width: 1.5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            children: [
                              Icon(Icons.star,
                                  color: Color(0xffFFE665), size: 20),
                              SizedBox(width: 5.0),
                              Text(
                                doctor.rating.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 10,
              top: 20,
              child: Image.asset(
                doctor.imageUrl,
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
