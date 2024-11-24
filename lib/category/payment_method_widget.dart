import 'package:flutter/material.dart';
import 'package:graduation/model/payment_method_model.dart';

class PaymentMethodCardWidget extends StatelessWidget {
  final PaymentMethodCard method;

  const PaymentMethodCardWidget({Key? key, required this.method})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(
        top: 10, bottom: 10,
        //left: 10,
        // right: 10,
      ),
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: const Color(0xff336EA6),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset(
            method.logo, // استخدام Image.asset لتحميل الصورة من المسار
            width: 55,
            height: 55,
          ),
          title: Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Text(
              method.cardNumber,
              style: TextStyle(
                  color: Color(0xff233B55), fontWeight: FontWeight.w500),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Text(
              method.expiry,
              style: TextStyle(color: Color(0xffBDCAD6)),
            ),
          ),
          trailing: method.isSelected
              ? Icon(
                  Icons.check_circle,
                  color: const Color(0xff336EA6),
                  size: 28,
                )
              : null,
        ),
      ),
    );
  }
}
