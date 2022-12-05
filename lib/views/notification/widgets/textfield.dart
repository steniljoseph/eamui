import 'package:flutter/material.dart';

class TextFieldd extends StatefulWidget {
  const TextFieldd(
      {Key? key,
      this.controller,
      this.onTap,
      this.onChanged,
      this.readOnly,
      this.border,
      this.enabledBorder,
      this.focusedBorder,
      this.maxLines,
      this.suffixIcon,
      this.hintText,
      this.hintStyle})
      : super(key: key);

  final TextEditingController? controller;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool? readOnly;
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Widget? suffixIcon;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;

  @override
  State<TextFieldd> createState() => _TextFielddState();
}

class _TextFielddState extends State<TextFieldd> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      readOnly: false,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      style: const TextStyle(fontSize: 20),
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        border: widget.border ??
            UnderlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
        focusedBorder: widget.focusedBorder ??
            UnderlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
        enabledBorder: widget.enabledBorder ??
            UnderlineInputBorder(
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
        hintText: widget.hintText ?? "Select",
        hintStyle: widget.hintStyle ?? TextStyle(fontSize: 18),
        suffixIcon: GestureDetector(
          onTap: () {},
          child: widget.suffixIcon ??
              Icon(Icons.keyboard_arrow_right, size: 30, color: Colors.grey),
        ),
      ),
    );
  }
}
