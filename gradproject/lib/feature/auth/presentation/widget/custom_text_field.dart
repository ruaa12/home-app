// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gradproject/feature/home/prasntation/widget/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.validator,
    required this.label,
    required this.hintText,
    required this.controller,
     required this.keybourdTybe,
  }) : super(key: key);
  final String? Function(String?) validator;
  final String label;  
  final String hintText;
  final TextEditingController controller;
  final TextInputType keybourdTybe;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller: controller ,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: keybourdTybe,
          
          decoration: InputDecoration(
            fillColor: color7,
            filled: true,
            labelText: label,

            hintText: hintText ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40), 
            ),

          ),
          validator: validator
          
         );
  }
}
