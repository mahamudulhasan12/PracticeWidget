import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    this.lText,
    this.isDense,
    this.borderRadius,
    this.borderSide,
    this.inputType,
    this.sIcons,
    this.pIcons,
    this.onTab,
    this.obscureText,
    this.fillColor,
    this.filled,
    this.hindText,
    this.hTStyle,
    this.outlineBorder,
    this.focuseBorder, this.maxline, this.textInputAction,
  });

  final TextEditingController controller;
  final String? hindText;
  final Widget? lText;
  final bool? isDense;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final TextInputType? inputType;
  final Widget? sIcons;
  final Widget? pIcons;
  final VoidCallback? onTab;
  final bool? obscureText;
  final Color? fillColor;
  final bool? filled;
  final TextStyle? hTStyle;
  final InputBorder? outlineBorder;
  final InputBorder? focuseBorder;
  final int ? maxline;
  final TextInputAction ? textInputAction;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxline ,
      // obscureText: obscureText ?? true,
      onTap: onTab,
      controller: controller,
      keyboardType: inputType,
      textInputAction: textInputAction,
      // autofocus: true,
      decoration: InputDecoration(

        hintText: hindText,

        isDense: isDense,
        label: lText,
        hintStyle: hTStyle,
        suffixIcon: sIcons,
        prefixIcon: pIcons,
        fillColor: fillColor,
        filled: filled,

        border:
            outlineBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              borderSide:
                  borderSide ?? BorderSide(width: 0.5, color: Colors.black),
            ),
        focusedBorder:
            focuseBorder ??
            OutlineInputBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
              borderSide:
                  borderSide ?? BorderSide(width: 0.5, color: Colors.black),
            ),
      ),
    );
  }
}
