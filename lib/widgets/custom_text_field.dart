import 'package:flutter/material.dart';
import '../constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? suffixIcon;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.label,
    this.suffixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: fieldLabelStyle,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        enabledBorder: customInputBorder,
        focusedBorder: customInputBorder,
      ),
    );
  }
}
