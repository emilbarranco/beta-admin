import 'package:beta_admin/constants/colors.dart';
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

class Suscriptions extends StatefulWidget {
  const Suscriptions({super.key});

  @override
  State<Suscriptions> createState() => _SuscriptionsState();
}

class _SuscriptionsState extends State<Suscriptions> {
  final _formKey = GlobalKey<FormState>();
  String userValue = list.first;
  String tierValue = list.first;
  String statusValue = list.first;
  String paymentValue = list.first;
  String transactionValue = list.first;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023, 1),
        lastDate: DateTime(2099));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
              "Add Suscription",
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
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Tier",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: tierValue,
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
                                tierValue = value!;
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
                          width: 200.0,
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
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Payment Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: paymentValue,
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
                                paymentValue = value!;
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
                          "Gateway Suscription ID",
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
                          "Next Payment date",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                ColorConstants.primaryDashboardColor)),
                        onPressed: () => _selectDate(context),
                        child: const Text('Select date'),
                      ),
                      const SizedBox(width: 20.0),
                      Text("${selectedDate.toLocal()}".split(' ')[0]),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Cancel Reason",
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
                          "Cancel date",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                ColorConstants.primaryDashboardColor)),
                        onPressed: () => _selectDate(context),
                        child: const Text('Select date'),
                      ),
                      const SizedBox(width: 20.0),
                      Text("${selectedDate.toLocal()}".split(' ')[0]),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Last Earn Credit transaction",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: transactionValue,
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
                                transactionValue = value!;
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
