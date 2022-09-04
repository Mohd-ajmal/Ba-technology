import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String name;
  Icon icon;
  CustomTextField({Key? key, required this.name, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.red,
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      textInputAction: TextInputAction.next,
      style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 19),
      decoration: InputDecoration(
        label: Text(name),
        labelStyle: const TextStyle(color: Colors.black),
        focusColor: Colors.red,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
