import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/lower_bar.dart';
import 'package:beta_admin/widgets/skills_body.dart';
import 'package:beta_admin/widgets/upper_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: ColorConstants.secondaryDashboardColor,
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: 3, color: ColorConstants.primaryDashboardColor),
                  ),
                ),
                child: const UpperBar(),
              ),
              const SkillsBody(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                        width: 3, color: ColorConstants.primaryDashboardColor),
                  ),
                ),
                child: const LowerBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
