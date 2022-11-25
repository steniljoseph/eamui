import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomDrawerListItems extends StatelessWidget {
  final String title;
  final IconData leading;
  const CustomDrawerListItems(
      {super.key, required this.title, required this.leading});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leading,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 2.h, fontWeight: FontWeight.bold),
      ),
    );
  }
}
