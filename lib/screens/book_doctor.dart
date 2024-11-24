import 'package:flutter/material.dart';
import 'package:graduation/category/doctor_listview.dart';
import 'package:graduation/model/doctor_category_model.dart';

class BookDoctor extends StatelessWidget {
  const BookDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ), // أيقونة البحث باللون الأبيض
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 8),
            child: Text(
              'Book a doctor',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff233B55),
              ),
            ),
          ),
          Expanded(
            child: DoctorListView(
              doctors: [
                DoctorCategoryModel(
                  name: 'Dr. Osama Ali',
                  category: 'Speech',
                  rating: 4.5,
                  imageUrl: 'assets/osama.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. May Mourad',
                  category: 'Skills development',
                  rating: 4.8,
                  imageUrl: 'assets/may.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. Sara Selem',
                  category: 'Speech',
                  rating: 4.5,
                  imageUrl: 'assets/sara.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. Mohamed Saad',
                  category: 'Learning difficulties',
                  rating: 4.6,
                  imageUrl: 'assets/mohamed 1.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. Adel Mohamed',
                  category: 'Intelligence test',
                  rating: 4.9,
                  imageUrl: 'assets/adel 1.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. Alaa Mohamed',
                  category: 'Autism',
                  rating: 4.7,
                  imageUrl: 'assets/alaa 2.png',
                ),
                DoctorCategoryModel(
                  name: 'Dr. Fatema Ahmed',
                  category: 'Behavior modification',
                  rating: 4.5,
                  imageUrl: 'assets/fatema 1.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
