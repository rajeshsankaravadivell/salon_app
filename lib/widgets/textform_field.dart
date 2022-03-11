import 'package:flutter/material.dart';

class CustomtextFormField extends StatelessWidget {
  const CustomtextFormField({
    Key? key,
    this.validator,
    this.onChanged,
    this.enabled,
    this.labelText,
    this.hintText,
    this.left,
    this.bottom,
    this.right,
    this.top,
    this.padding,
    this.suffixIcon,
  }) : super(key: key);

  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool? enabled;
  final String? labelText;
  final String? hintText;
  final double? left;
  final double? bottom;
  final double? right;
  final double? top;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: TextFormField(
        validator: validator,
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: const TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF95A1AC),
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF95A1AC),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFEE4E3A),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(9),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFFEE4E3A),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(9),
          ),
          filled: true,
          fillColor: const Color(0xFFFBEEE2),
        ),
        style: const TextStyle(
          fontFamily: 'Lexend Deca',
          color: Color(0xFF2B343A),
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
