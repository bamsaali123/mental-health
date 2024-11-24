import 'package:flutter/material.dart';

// Button for selecting a date
Widget buildDateButton(String date) {
  return GestureDetector(
    onTap: () {
   
    },
    child: Container(
      padding: EdgeInsets.symmetric(
          vertical: 12, horizontal: 16), // padding around the button
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(8), 
      ),
      child: Text(
        date,
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

// Button for selecting a time
Widget buildTimeButton(String time) {
  return GestureDetector(
    onTap: () {
      
    },
    child: Container(
      padding: EdgeInsets.symmetric(
          vertical: 12, horizontal: 16), // padding around the button
      decoration: BoxDecoration(
        color: Colors.blue, 
        borderRadius: BorderRadius.circular(8), 
      ),
      child: Text(
        time,
        style: TextStyle(
          color: Colors.white, 
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}