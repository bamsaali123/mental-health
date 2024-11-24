import 'package:flutter/material.dart';

class Appbarwedgit extends StatelessWidget {
  Appbarwedgit({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset(
          'assets/arrowback.png',
          width: 10,
        ),
      ),
      backgroundColor: Color(0xff336EA6),
      title: Center(
        child: Text(
          'Profile Details',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'edit');
            },
            child: Text(
              'Edit',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
