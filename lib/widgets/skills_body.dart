import 'package:flutter/material.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  static const Text textPlaceholder = Text("Data");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          child: DataTable(
            sortColumnIndex: 0,
            sortAscending: true,
            showBottomBorder: true,
            showCheckboxColumn: true, // State Management para filas multiselect.
            headingTextStyle: const TextStyle(fontWeight: FontWeight.bold),
            columns: const [
              DataColumn(
                label: Text("ID"),
              ),
              DataColumn(
                label: Text("Skill Name"),
              ),
              DataColumn(
                label: Text("Status"),
              ),
              DataColumn(
                label: Text("Creation Date"),
              ),
              DataColumn(
                label: Text("Category"),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                  DataCell(textPlaceholder),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
