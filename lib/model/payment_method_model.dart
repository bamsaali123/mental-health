import 'package:flutter/material.dart';

class PaymentMethodCard {
  final String logo;
  
  final String cardNumber;
  final String expiry;
  final bool isSelected;

  PaymentMethodCard({
    required this.logo,
   
    required this.cardNumber,
    required this.expiry,
    this.isSelected = false,
  });
}

