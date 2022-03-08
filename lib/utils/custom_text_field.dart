
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key, this.labelText,
        this.controller,
        this.onchange,
        this.onPress,
        this.suffixIcon,
        this.prefixIcon,
       })
      : super(key: key);
  final Function(String)? onchange;
  final String? labelText;
  final TextEditingController? controller;
  final Function(String)? onPress;
  final  Icon?  suffixIcon;
  final Icon? prefixIcon;



  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onchange,
      decoration: InputDecoration(
        fillColor:Color(0xffF1F1F1),
        filled: true,
        labelText: labelText!,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Color(0xff707070)),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3, color: Colors.red),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
