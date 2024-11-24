import 'package:flutter/material.dart';
import 'package:graduation/model/card_model.dart';


class CardWedgit extends StatelessWidget {
  const CardWedgit(this.cardmodel, {required Null Function() onTap});
  final CardModel cardmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
        child: ListTile(
          leading: Image.asset(cardmodel.image),
          title: Text(
            cardmodel.title,
            style: TextStyle(
              color: Color(0xff233B55),
              fontSize: 20,
            ),
          ),
          trailing: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, cardmodel.page);
            },
            icon: Image.asset(
              'assets/arrow.png',
            ),
          ),
        ),
      ),
    );
  }
}
