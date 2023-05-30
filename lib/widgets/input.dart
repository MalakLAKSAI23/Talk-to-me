import 'package:flutter/material.dart';
import 'package:talktome/widgets/constants.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.label, required this.keyboardType, required this.isObscure, required this.validator, required this.prefixIcon, required this.controller});
  final String label;
  final Icon prefixIcon;
  final TextInputType keyboardType;
  final bool isObscure;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  // final Function(String) onSaved;

  @override
  Widget build(BuildContext context) {
    return 
    TextFormField(
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.symmetric(vertical: 15.0),
        prefixIcon:prefixIcon ,
        labelText: label,
        labelStyle:const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
          color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color:Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10),
        )
      ),
      cursorColor: myColor,
      keyboardType: keyboardType,
      obscureText: isObscure,
      validator: validator,
      controller:controller,
    );
  }
}
