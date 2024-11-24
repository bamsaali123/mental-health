import 'package:flutter/material.dart';
import 'package:graduation/model/dectorcard.dart';

class DoctorhomeCategory extends StatefulWidget {
  final DoctorCard doctor; // كائن DoctorCard

  DoctorhomeCategory({super.key, required this.doctor});

  @override
  _DoctorhomeCategoryState createState() => _DoctorhomeCategoryState();
}

class _DoctorhomeCategoryState extends State<DoctorhomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0), // مسافة بين العناصر
      decoration: BoxDecoration(
        color: Color(0xff336EA6), // لون المستطيل الأزرق
        borderRadius: BorderRadius.circular(8), // زوايا دائرية للمستطيل الأزرق
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // تأثير الظل
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(3, 3), // موضع الظل
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(height: 10), // مسافة بين العناصر

          // النصف الأول: مستطيل أبيض يحتوي على الصورة والتقييم
          Expanded(
            flex: 1,
            child: Container(
              width: 220,
              padding: EdgeInsets.only(
                right: 8,
                left: 8,
                top: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white, // لون المستطيل الأبيض
                borderRadius: BorderRadius.circular(8), // زوايا دائرية
              ),
              child: Stack(
                children: [
                  // صورة الطبيب
                  Positioned(
                    top: 7,
                    right: 45,
                    child: Container(
                      width: 90,
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.doctor.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // تقييم الطبيب داخل شكل بيضاوي
                  Positioned(
                    bottom: 6,
                    left: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: Color(0xff336EA6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Color(0xffFFE665), size: 16),
                          SizedBox(width: 4),
                          Text(
                            widget.doctor.rating.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3),
          // النصف الثاني: معلومات الدكتور (اسم، خبرة، سعر)
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // المعلومات تبدأ من اليسار
                mainAxisAlignment: MainAxisAlignment.center, // توسيط عمودي
                children: [
                  Text(
                    widget.doctor.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '${widget.doctor.experience} experience',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(height: 3),
                  Text(
                    widget.doctor.price,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  // إضافة زر Read More الذي ينقل إلى صفحة أخرى
                  Align(
                    alignment:
                        Alignment.centerLeft, // محاذاة زر Read More إلى اليسار
                    child: GestureDetector(
                      onTap: () {
                        // التنقل إلى الصفحة المطلوبة
                        /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => YourNextPage()), // استبدل YourNextPage بالصفحة المستهدفة
      ); */
                      },
                      child: Text(
                        'Read More',
                        style: TextStyle(
                          color: Colors.white,
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
    );
  }
}
