import 'package:flutter/material.dart';
import 'package:graduation/category/doctor_item.dart';
import 'package:graduation/model/doctor_category_model.dart';


class DoctorListView extends StatelessWidget {
  final List<DoctorCategoryModel> doctors;

  DoctorListView({required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, index) {
        return DoctorItem(doctor: doctors[index]);
      },
    );
  }
}
