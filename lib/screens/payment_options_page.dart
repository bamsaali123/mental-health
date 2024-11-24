import 'package:flutter/material.dart';
import 'package:graduation/category/payment_method_widget.dart';
import 'package:graduation/model/payment_method_model.dart';
import 'package:graduation/screens/congratulations.dart';
import 'package:graduation/screens/history_details.dart';

class PaymentOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor:
              Color(0xff336EA6), // تغيير لون شريط التطبيق إلى الأزرق
          leading:
              BackButton(color: Colors.white), // استخدام leading بدلاً من Row
          actions: [
            TextButton(
              onPressed: () {
                // هنا يمكنك إضافة الكود الذي تريده لتنفيذ شيء عند الضغط على الزر
              },
              child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.white, fontSize: 20), // لون النص أبيض
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Methods", // إضافة عنوان "Payment Methods"
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff233B55),
              ),
            ),
            SizedBox(height: 10), // فاصلة صغيرة
            Text(
              "Choose desired vehicle type. We offer cars suitable for most every day needs.",
              style: TextStyle(fontSize: 14, color: Color(0xff233B55)),
            ),
            SizedBox(height: 20),
            // تعديل على الـ Widget لإظهار صورة بدلاً من الأيقونة
            PaymentMethodCardWidget(
              method: PaymentMethodCard(
                logo: 'assets/mastercard.png', // استبدال الأيقونة بصورة

                cardNumber: "**** **** **** 5967",
                expiry: "Expires 09/25",
              ),
            ),
            PaymentMethodCardWidget(
              method: PaymentMethodCard(
                logo: 'assets/visa.png', // استبدال الأيقونة بصورة

                cardNumber: "**** **** **** 3802",
                expiry: "Expires 10/27",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Current method",
              style: TextStyle(fontSize: 16, color: Color(0xffBDCAD6)),
            ),
            SizedBox(height: 8),
            PaymentMethodCardWidget(
              method: PaymentMethodCard(
                logo: 'assets/cash.png', // استبدال الأيقونة بصورة

                cardNumber: "Cash payment",
                expiry: "Default method",
                isSelected: true,
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Material(
                elevation: 0, // تقليل القيمة إلى 0 لإزالة الظل
                borderRadius: BorderRadius.circular(12),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Congratulations()),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff336EA6),
                    foregroundColor: Colors.white,
                    side: BorderSide(
                        color: const Color.fromARGB(186, 255, 255, 255),
                        width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                  ),
                  child: Text(
                    "Done",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
