import 'package:beta_admin/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        style: TextStyle(color: ColorConstants.primaryDarkColor),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.primaryDarkColor, width: 1),
          ),
          fillColor: ColorConstants.primaryDarkColor,
          prefixIcon: const Icon(Icons.search),
          labelText: 'Search',
        ),
      ),
    );
  }
}
