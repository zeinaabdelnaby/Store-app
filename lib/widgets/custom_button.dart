import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.text});

  String text;
    VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        height: 60,
        width: double.infinity,
        child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
