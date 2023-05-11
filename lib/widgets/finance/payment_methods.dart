import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/finance/checkbox_option.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'List Item #1',
  'List Item #2',
  'List Item #3',
  'List Item #4',
  'List Item #5',
  'List Item #6',
  'List Item #7',
];

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final _formKey = GlobalKey<FormState>();
  String gatewayValue = list.first;
  String userValue = list.first;
  String creditValue = list.first;

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
              "Add Payment Method",
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
                          "Gateway",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: gatewayValue,
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
                                gatewayValue = value!;
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
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "example@oshinstar.com",
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
                          "User",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: userValue,
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
                                userValue = value!;
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
                  // Esta pantalla tiene 3 checkboxes diferentes, se pasaran los nombres mas adelante.
                  const CheckboxOption(),
                  const CheckboxOption(),
                  const CheckboxOption(),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Gateway Buyer ID",
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
                          "Gateway Buyer Payment ID",
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
                          "First name",
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
                          "Last name",
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
                          "Country code",
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
                          "Is earn credit",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: creditValue,
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
                                creditValue = value!;
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
