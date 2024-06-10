import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:valid/src/ui/style/glass.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final Brand icon;
  final String date;

  const SummaryCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: GlossyContainer(
          borderRadius: BorderRadius.circular(15),
          height: 100,
          width: MediaQuery.sizeOf(context).width / 5,
          child: Row(
            children: [
              icon,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
