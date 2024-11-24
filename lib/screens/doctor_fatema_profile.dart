
import 'package:flutter/material.dart';
import 'package:graduation/model/doctor_profile_model.dart';
import 'package:graduation/screens/doctor_profile.dart';

class DoctorFatemaProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // إنشاء نموذج الدكتور أسامة
    final doctor = DoctorProfileModel(
      name: 'Fatema Ahmed',
      imageUrl: 'assets/fatema 1.png',
      category: 'Behavior modification',
      rating: 4.5,
      experience: '11 years',
      description: 'Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community.',
    );

    return DoctorProfileWidget(doctor: doctor);
  }
}