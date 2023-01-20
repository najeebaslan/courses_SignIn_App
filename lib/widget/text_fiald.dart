import 'package:flutter/material.dart';

import '../style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.controller,
      this.input,
      this.textInputType,
      this.onChanged,
      this.validator,
      this.autovalidate,
      this.textDirection,
      this.obscureText,
      this.focusNode})
      : super(key: key);
  final TextEditingController? controller;
  final InputDecoration? input;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidate;
  final TextDirection? textDirection;
  final bool? obscureText;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        textAlign: TextAlign.right,
        style: TextStyle(
            color: StyleWidget.black.withOpacity(0.7),
            fontFamily: StyleWidget.fontName,
            fontSize: 14),
        keyboardType: textInputType,
        controller: controller,
        textDirection: textDirection ?? TextDirection.rtl,
        cursorColor: kPrimaryColor,
        autovalidateMode: autovalidate,
        decoration: input,
        onChanged: onChanged,
        expands: false,
        onSaved: (value) => value = value,
        validator: validator);
  }
}
