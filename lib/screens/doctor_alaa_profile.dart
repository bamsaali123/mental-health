import 'package:flutter/material.dart';
import 'package:graduation/model/doctor_profile_model.dart';
import 'package:graduation/screens/doctor_profile.dart';

class DoctorAlaaProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // إنشاء نموذج الدكتور أسامة
    final doctor = DoctorProfileModel(
      name: 'Alaa Mohamed',
      imageUrl: 'assets/alaa 2.png',
      category: 'Speech',
      rating: 4.7,
      experience: '8 years',
      description:
          'Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community.',
    );

    return DoctorProfileWidget(doctor: doctor);
  }
}
