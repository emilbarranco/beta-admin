import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/change_module/textfield_tags_widget.dart';
import 'package:flutter/material.dart';

class ChangeModule extends StatefulWidget {
  const ChangeModule({super.key});

  @override
  State<ChangeModule> createState() => _ChangeModuleState();
}

class _ChangeModuleState extends State<ChangeModule> {
  final _formKey = GlobalKey<FormState>();

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
              "Change Module",
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
                          "Title",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Category name",
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
                          "Subtitle name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Subtitle Name",
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Is published",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Checkbox(value: false, onChanged: null),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Is published",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Checkbox(value: false, onChanged: null),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Categories",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomFieldTags()
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Text(
                          "Skills",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      CustomFieldTags()
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Slug",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "example-text",
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
