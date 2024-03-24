import 'package:flutter/material.dart';
import 'package:todoapplocal/theme/index.dart';

class Input extends StatelessWidget {
  Input({
    super.key,
    required this.controller,
    required this.labelText,
    this.hintText,
    this.obscureText = false,
    this.keyboardType,
    required this.validator,
    this.onChanged,
  });
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final bool obscureText;
  final TextInputType? keyboardType;
  String? Function(String?) validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      onChanged: onChanged,
      style: TextStyle(
        fontSize: 16.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        fillColor: Colors.red,
        labelText: labelText,
        hintText: hintText,
        labelStyle: TextStyle(color: Colors.black),
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.redPastel,
          ),
        ),
      ),
    );
  }
}
