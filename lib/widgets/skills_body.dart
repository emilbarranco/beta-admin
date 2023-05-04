import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SkillsBody extends StatefulWidget {
  const SkillsBody({super.key});

  @override
  State<SkillsBody> createState() => _SkillsBodyState();
}

class _SkillsBodyState extends State<SkillsBody> {
  final DataTableSource _data = SkillsData();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            child: PaginatedDataTable(
              source: _data,
              header: const Text(
                "Skills",
                style: TextStyle(fontSize: 24.0),
              ),
              showFirstLastButtons: true,
              showCheckboxColumn: true,
              columnSpacing: 100,
              horizontalMargin: 10,
              rowsPerPage: 8,
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Status')),
                DataColumn(label: Text('Creation Date')),
                DataColumn(label: Text('Category')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsData extends DataTableSource {
  static List<Map<String, dynamic>> data = [
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
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(data[index]['ID'])),
      DataCell(Text(data[index]['Name'])),
      DataCell(Text(data[index]['Status'])),
      DataCell(Text(data[index]['Creation Date'])),
      DataCell(Text(data[index]['Category'])),
    ], onSelectChanged: (value) {});
  }
}
