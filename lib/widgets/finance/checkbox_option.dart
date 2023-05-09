import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CheckboxOption extends StatefulWidget {
  const CheckboxOption({super.key});

  @override
  State<CheckboxOption> createState() => _CheckboxOptionState();
}

class _CheckboxOptionState extends State<CheckboxOption> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text(
            "Checkbox Item",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Checkbox(
          checkColor: Colors.white,
          fillColor:
              MaterialStateProperty.all(ColorConstants.primaryDashboardColor),
          value: check,
          onChanged: (bool? value) {
            setState(() {
              check = value!;
            });
          },
        ),
      ],
    );
  }
}
