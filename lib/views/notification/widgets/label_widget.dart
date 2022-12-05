import 'package:flutter/material.dart';

class LabelCustomWidget extends StatefulWidget {
  final String label;
  final Widget widget;

  LabelCustomWidget({required this.label, required this.widget});

  @override
  _LabelCustomWidgetState createState() => _LabelCustomWidgetState();
}

class _LabelCustomWidgetState extends State<LabelCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(fontSize: 18),
          ),
          // SizedBox(height: 10),
          widget.widget,
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
