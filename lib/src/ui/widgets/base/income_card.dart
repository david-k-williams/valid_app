import 'package:flutter/material.dart';
import 'package:valid/src/ui/style/glass.dart';

class IncomeCard extends StatelessWidget {
  final String date;
  final double amount;

  const IncomeCard({
    Key? key,
    required this.date,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: GlossyContainer(
        height: 40,
        width: 60,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              date,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '\$${amount.toStringAsFixed(2)}',
            ),
          ],
        ),
      ),
    );
  }
}
