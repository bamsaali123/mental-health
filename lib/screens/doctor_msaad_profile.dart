import 'package:flutter/material.dart';
import 'package:graduation/model/doctor_profile_model.dart';
import 'package:graduation/screens/doctor_profile.dart';

class DoctorMohamedProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // إنشاء نموذج الدكتور أسامة
    final doctor = DoctorProfileModel(
      name: 'Dr. Mohamed Saad',
      category: 'Learning difficulties',
      rating: 4.6,
      imageUrl: 'assets/mohamed 1.png',
      experience: '10 years',
      description:
          'Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community.',
    );

    return DoctorProfileWidget(doctor: doctor);
  }
}
