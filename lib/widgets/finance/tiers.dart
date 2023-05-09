import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/finance/checkbox_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> list = <String>[
  'List Item #1',
  'List Item #2',
  'List Item #3',
  'List Item #4',
  'List Item #5',
  'List Item #6',
  'List Item #7',
];

class Tiers extends StatefulWidget {
  const Tiers({super.key});

  @override
  State<Tiers> createState() => _TiersState();
}

class _TiersState extends State<Tiers> {
  final _formKey = GlobalKey<FormState>();
  String membershipValue = list.first;
  String statusValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 3, color: ColorConstants.primaryDashboardColor),
              ),
            ),
            child: Container(),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Add Tier",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Divider(),
          const SizedBox(height: 10.0),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Amount",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Auto Recharge min amount",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Description",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Text up to 5 lines.",
                              border: OutlineInputBorder(),
                            ),
                            minLines: 1,
                            maxLines: 5,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Welcome Message",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Text up to 5 lines.",
                              border: OutlineInputBorder(),
                            ),
                            minLines: 1,
                            maxLines: 5,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Membership",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 180.0,
                          child: DropdownButtonFormField<String>(
                            value: membershipValue,
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: ColorConstants.primaryDarkColor,
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            elevation: 8,
                            style: TextStyle(
                                color: ColorConstants.primaryDarkColor),
                            focusColor: ColorConstants.secondaryDashboardColor,
                            onChanged: (String? value) {
                              setState(() {
                                membershipValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Gateway Plan ID",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Text...",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 180.0,
                          child: DropdownButtonFormField<String>(
                            value: statusValue,
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: ColorConstants.primaryDarkColor,
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            elevation: 8,
                            style: TextStyle(
                                color: ColorConstants.primaryDarkColor),
                            focusColor: ColorConstants.secondaryDashboardColor,
                            onChanged: (String? value) {
                              setState(() {
                                statusValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  // Hay 7 checkboxes en esta pantalla, cuando se integren se colocaran los nombres de campo por separado.
                  Column(
                    children: [
                      // ignore: unused_local_variable
                      for (var x in list) const CheckboxOption(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
