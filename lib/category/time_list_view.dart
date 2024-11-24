import 'package:flutter/material.dart';
import 'package:graduation/category/doctor_item.dart'; // تأكد من استيراد DoctorItem
import 'package:graduation/model/doctor_category_model.dart';

class TimeListView extends StatefulWidget {
  @override
  _TimeListViewState createState() => _TimeListViewState();
}

class _TimeListViewState extends State<TimeListView> {
  final List<Map<String, String>> dates = [
    {'month': 'OCT', 'day': '1', 'weekday': 'SUN'},
    {'month': 'OCT', 'day': '2', 'weekday': 'MON'},
    {'month': 'OCT', 'day': '3', 'weekday': 'TUE'},
    {'month': 'OCT', 'day': '4', 'weekday': 'WED'},
    {'month': 'OCT', 'day': '5', 'weekday': 'THU'},
    {'month': 'OCT', 'day': '6', 'weekday': 'FRI'},
    {'month': 'OCT', 'day': '7', 'weekday': 'SAT'},
    {'month': 'OCT', 'day': '8', 'weekday': 'SUN'},
    {'month': 'OCT', 'day': '9', 'weekday': 'MON'},
    {'month': 'OCT', 'day': '10', 'weekday': 'TUE'},
  ];

  int selectedIndex = -1; // لتمثيل العنصر المحدد
  List<DoctorCategoryModel> doctors = []; // قائمة الأطباء

  // دالة لتحديث قائمة الأطباء بناءً على التاريخ
  void updateDoctors(int index) {
    switch (index) {
      case 0:
        doctors = [
         
          DoctorCategoryModel(
              name: 'Dr. Osama Ali',
              category: 'Speech',
              rating: 4.5,
              imageUrl: 'assets/osama.png'),
          DoctorCategoryModel(
              name: 'Dr. May Mourad',
              category: 'Speech',
              rating: 4.5,
              imageUrl: 'assets/may.png'),
        ];
        break;
      case 1:
        doctors = [
          DoctorCategoryModel(
              name: 'Dr. Sara Selem',
              category: 'Speech',
              rating: 4.5,
              imageUrl: 'assets/sara.png'),
         DoctorCategoryModel(
            name: 'Dr. Mohamed Saad',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/mohamed 1.png',
          ),
        ];
        break;
      case 2:
        doctors = [
           DoctorCategoryModel(
            name: 'Dr. May Mourad',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/may.png',
          ),
         DoctorCategoryModel(
            name: 'Dr. Osama Ali',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/osama.png',
          ),
        ];
        break;
      case 3:
        doctors = [
          DoctorCategoryModel(
            name: 'Dr. Fatema Ahmed',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/fatema 1.png',
          ),
        ];
        break;
      case 4:
        doctors = [
         DoctorCategoryModel(
            name: 'Dr. Adel Mohamed',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/adel 1.png',
          ),
           DoctorCategoryModel(
            name: 'Dr. Sara Selem',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/sara.png',
          ),
        ];
        break;
      case 5:
        doctors = [
         DoctorCategoryModel(
            name: 'Dr. Mohamed Saad',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/mohamed 1.png',
          ),
          DoctorCategoryModel(
            name: 'Dr. Adel Mohamed',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/adel 1.png',
          ),
        ];
        break;
      case 6:
        doctors = [
           DoctorCategoryModel(
            name: 'Dr. Sara Selem',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/sara.png',
          ),
        ];
        break;
      case 7:
        doctors = [
          DoctorCategoryModel(
            name: 'Dr. May Mourad',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/may.png',
          ),
          DoctorCategoryModel(
            name: 'Dr. Sara Selem',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/sara.png',
          ),
        ];
        break;
      case 8:
        doctors = [
          DoctorCategoryModel(
            name: 'Dr. Mohamed Saad',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/mohamed 1.png',
          ),
          DoctorCategoryModel(
            name: 'Dr. Adel Mohamed',
            category: 'Speech',
            rating: 4.5,
            imageUrl: 'assets/adel 1.png',
          ),
        ];
        break;
      case 9:
        doctors = [
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
        ];
        break;
      default:
        doctors = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 160, // ارتفاع قائمة التواريخ
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      updateDoctors(index); // تحديث قائمة الأطباء
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 70, // عرض كل عنصر
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Color(0xffBDCAD6)
                            : Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Text(
                            dates[index]['month']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff233B55),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            dates[index]['day']!,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff233B55),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            dates[index]['weekday']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff233B55),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Divider(color: Color(0xff336EA6), thickness: 1),
          SizedBox(height: 16),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Available Doctors',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff233B55),
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          // قائمة الأطباء
         ListView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  itemCount: doctors.length,
  itemBuilder: (context, index) {
    if (index < doctors.length) {
      return DoctorItem(doctor: doctors[index]);
    } else {
      return SizedBox(); // يمكن إرجاع حاوية فارغة في حالة وجود خطأ
    }
  },
),
        ],
      ),
    );
  }
}
