import 'package:flutter/material.dart';
import 'package:graduation/model/doctor_profile_model.dart';
import 'package:graduation/screens/doctor_profile.dart';

class DoctorSaraProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // إنشاء نموذج الدكتور أسامة
    final doctor = DoctorProfileModel(
      name: 'Sara Selem',
      imageUrl: 'assets/sara.png',
      category: 'Speech',
      rating: 4.9,
      experience: '12 years',
      description: 'Figma ipsum component variant main layer. Library figma resizing invite mask arrow ipsum community.',
    );

    return DoctorProfileWidget(doctor: doctor);
  }
}
