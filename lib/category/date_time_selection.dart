import 'package:flutter/material.dart';

// Widget for selecting date and time
class DateTimeSelection extends StatefulWidget {
  @override
  _DateTimeSelectionState createState() => _DateTimeSelectionState();
}

class _DateTimeSelectionState extends State<DateTimeSelection> {
  String? selectedDate;
  String? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Book a Date section
        buildDateSection(),
        SizedBox(height: 20),
        // Select a Time section
        buildTimeSection(),
      ],
    );
  }

  Widget buildDateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Book a Date',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              List<String> dates = [
                '8 MAR',
                '9 MAR',
                '10 MAR',
                '11 MAR',
                '12 MAR'
              ];
              return buildDateButton(
                  dates[index], selectedDate == dates[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget buildTimeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select a Time',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          height: 45,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              List<String> times = ['8:00', '11:00', '13:30', '18:00', '20:30'];
              return buildTimeButton(
                  times[index], selectedTime == times[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget buildDateButton(String date, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDate = date;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff336EA6) : Color(0xffBDCAD6),
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

  Widget buildTimeButton(String time, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTime = time;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff336EA6) : Color(0xffBDCAD6),
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
}