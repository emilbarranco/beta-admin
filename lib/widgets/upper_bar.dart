import 'package:beta_admin/constants/colors.dart';
import 'package:beta_admin/widgets/search_skill.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['Approve', 'Reject', 'Unpublish', 'Delete'];

class UpperBar extends StatefulWidget {
  const UpperBar({super.key});

  @override
  State<UpperBar> createState() => _UpperBarState();
}

class _UpperBarState extends State<UpperBar> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                elevation: 8,
                style: TextStyle(color: ColorConstants.primaryDarkColor),
                focusColor: ColorConstants.secondaryDashboardColor,
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      const MaterialStatePropertyAll<Color>(Colors.white),
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      ColorConstants.primaryDashboardColor)),
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
        const SearchBar(),
      ],
    );
  }
}
