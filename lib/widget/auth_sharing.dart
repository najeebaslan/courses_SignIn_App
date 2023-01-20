import 'package:flutter/material.dart';

import '../style.dart';

class AuthSharing {
  static InputDecoration inputDecoration({
    String? labelText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    String? prefixText,
    String? suffixText,
    String? hintText,
    double? borderRadius,
    EdgeInsetsGeometry? edge,
  }) {
    return InputDecoration(
      suffixText: suffixText,
      fillColor: Colors.white,
      filled: true,
      contentPadding: edge ?? const EdgeInsets.fromLTRB(30, 10, 30, 10),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          borderSide: BorderSide(color: kPrimaryColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          borderSide: BorderSide(color: Colors.grey.shade400)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          borderSide: const BorderSide(color: Colors.red, width: 2.0)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          borderSide: const BorderSide(color: Colors.red, width: 2.0)),
      errorStyle: const TextStyle(
        color: Colors.red,
        fontFamily: StyleWidget.fontName,
      ),
      prefixIcon: prefixIcon,
      hintText: hintText,
      labelText: labelText,
      labelStyle: const TextStyle(
        fontFamily: StyleWidget.fontName,
        color: Color(0xFF727072),
        height: 1,
        fontSize: 17,
      ),
      prefixText: prefixText,
      suffixIcon: suffixIcon,
      suffixStyle:
          const TextStyle(fontFamily: StyleWidget.fontName, ),
      prefixStyle: const TextStyle(
        fontFamily: StyleWidget.fontName,
        color: Colors.black,
        fontSize: 17,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
      ),
    );
  }
}
