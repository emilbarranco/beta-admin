import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/finance/checkbox_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> list = <String>[
  'List Item #1',
  'List Item #2',
  'List Item #3',
];

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final _formKey = GlobalKey<FormState>();
  String financeValue = list.first;
  String typeValue = list.first;
  String depositValue = list.first;
  String gatewayValue = list.first;
  String subscriberValue = list.first;
  String referredValue = list.first;
  String mediaValue = list.first;
  String collectionValue = list.first;

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
              "Add User Transaction",
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
                          "Finance",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: financeValue,
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
                                financeValue = value!;
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.primaryDashboardColor,
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
                          "Deposit Type",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: depositValue,
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
                                depositValue = value!;
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
                          "Gateway Transaction ID",
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
                          "Gateway User ID",
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
                  const CheckboxOption(),
                  const SizedBox(height: 20.0),
                  const CheckboxOption(),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Subscriber",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: subscriberValue,
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
                                subscriberValue = value!;
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
                  const CheckboxOption(),
                  const SizedBox(height: 20.0),
                  const CheckboxOption(),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Country",
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
                          "Referred User",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: referredValue,
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
                                referredValue = value!;
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close,
                            color: ColorConstants.primaryDashboardColor,
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
                          "Media",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: mediaValue,
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
                                mediaValue = value!;
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close,
                            color: ColorConstants.primaryDashboardColor,
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
                          "Collectior",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200.0,
                          child: DropdownButtonFormField<String>(
                            value: collectionValue,
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
                                collectionValue = value!;
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.edit,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.primaryDashboardColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.close,
                            color: ColorConstants.primaryDashboardColor,
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
                          "Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Pending",
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
