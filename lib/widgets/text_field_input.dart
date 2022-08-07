import 'package:flutter/material.dart';

class TextfieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass ;
  final String hintText;
  final TextInputType textInputType;

  const TextfieldInput({super.key,   this.isPass = false, required this.textEditingController, required this.textInputType, required this.hintText});



  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8.0),


        
        ),
        keyboardType: textInputType,
        obscureText: isPass,

      
    );
  }
}