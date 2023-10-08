import 'package:flutter/material.dart';

import 'custom_searchicon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 40),
        ),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
