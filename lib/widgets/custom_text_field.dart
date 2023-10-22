import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.inputType,
      this.obscureText = false});

  String? hintText;
  bool? obscureText;
  Function(String)? onChanged;
  TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
        obscureText: obscureText!,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
          border: OutlineInputBorder(
              borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
        ));
  }
}
