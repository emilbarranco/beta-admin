import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/change_module/change_module.dart';
import 'package:beta_admin/widgets/feature_options/add_feature_option.dart';
import 'package:beta_admin/widgets/finance/add_pack.dart';
import 'package:beta_admin/widgets/finance/payment_methods.dart';
import 'package:beta_admin/widgets/finance/tiers.dart';
import 'package:beta_admin/widgets/finance/user_finances.dart';
import 'package:beta_admin/widgets/finance/user_transaction.dart';
import 'package:beta_admin/widgets/skills/lower_bar.dart';
import 'package:beta_admin/widgets/skills/skills_body.dart';
import 'package:beta_admin/widgets/skills/upper_bar.dart';
import 'package:beta_admin/widgets/finance/suscriptions.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(80, 32, 80, 32),
            child: Column(
              children: const [
                UserTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
