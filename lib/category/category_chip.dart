import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String label;

  CategoryChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          right: 8.0), // يمكن تفعيل هذا إذا كان هناك حاجة للمسافة بين العناصر
      child: GestureDetector(
        onTap: () {
          // التنقل إلى الصفحة المطلوبة
          /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => YourNextPage()), // استبدل YourNextPage بالصفحة المستهدفة
      ); */
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 12.0,
          ),
          decoration: BoxDecoration(
            color: Color(0xff336EA6),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
