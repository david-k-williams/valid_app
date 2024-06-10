import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:valid/src/ui/style/glass.dart';

class AddIncomeCard extends StatelessWidget {
  const AddIncomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlossyContainer(
      margin: const EdgeInsets.all(16.0),
      height: 100,
      width: MediaQuery.sizeOf(context).width / 5,
      child: Column(
        children: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print('Adding income');
            },
          ),
          Text("Upload a New Income Statement")
        ],
      ),
    );
  }
}
