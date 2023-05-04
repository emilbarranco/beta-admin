import 'package:flutter/material.dart';

class SkillsBody extends StatefulWidget {
  const SkillsBody({super.key});

  static List<dynamic> data = [
    {
      "ID": "1",
      "Name": "Emil",
      "Status": "Approved",
      "Creation Date": "Supervisor",
      "Category": "Oshinstar",
      "checked": false,
    },
    {
      "ID": "2",
      "Name": "Vik",
      "Status": "Rejected",
      "Creation Date": "Administrator",
      "Category": "Oshinstar",
      "checked": false,
    },
    {
      "ID": "3",
      "Name": "Eslokaren",
      "Status": "Pending",
      "Creation Date": "Manager",
      "Category": "Oshinstar",
      "checked": false,
    },
    {
      "ID": "4",
      "Name": "Jose",
      "Status": "Unpublished",
      "Creation Date": "Administrator",
      "Category": "Oshinstar",
      "checked": false,
    },
  ];

  @override
  State<SkillsBody> createState() => _SkillsBodyState();
}

class _SkillsBodyState extends State<SkillsBody> {
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
            showCheckboxColumn:
                true, // State Management para filas multiselect.
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
            rows: List.generate(SkillsBody.data.length, (index) {
              final item = SkillsBody.data[index];
              return DataRow(
                  cells: [
                    DataCell(Text(item['ID'])),
                    DataCell(Text(item['Name'])),
                    DataCell(Text(item['Status'])),
                    DataCell(Text(item['Creation Date'])),
                    DataCell(Text(item['Category'])),
                  ],
                  selected: item['checked'],
                  onSelectChanged: (bool? value) {
                    setState(() {
                      SkillsBody.data[index]['checked'] = value!;
                    });
                    debugPrint(SkillsBody.data.toString());
                  });
            }),
          ),
        ),
      ],
    );
  }
}
