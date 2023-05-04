import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LowerBar extends StatefulWidget {
  const LowerBar({super.key});

  @override
  State<LowerBar> createState() => _LowerBarState();
}

class _LowerBarState extends State<LowerBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "(16) active skills.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: ColorConstants.primaryDashboardColor,
                ),
                Text(
                  'New Skill',
                  style: TextStyle(
                    color: ColorConstants.primaryDashboardColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
