import 'package:beta_admin/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> list = <String>[
  'List Item #1',
  'List Item #2',
  'List Item #3',
];

class AddPack extends StatefulWidget {
  const AddPack({super.key});

  @override
  State<AddPack> createState() => _AddPackState();
}

class _AddPackState extends State<AddPack> {
  final _formKey = GlobalKey<FormState>();
  String typeValue = list.first;
  String contentValue = list.first;

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
              "Add Pack",
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const Divider(),
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
                          "Type",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: typeValue,
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
                                typeValue = value!;
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
                          "Content",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: contentValue,
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
                                contentValue = value!;
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
                          "Price",
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
                                return 'Please enter the price';
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
                          "Quantity",
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
                                return 'Please enter the price';
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
                          "Details",
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Total Purchases",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "0",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Most Sold",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "False",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
