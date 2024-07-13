// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/style.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final bool? obsecure;
  final bool? readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final bool? isMulti;
  final bool? autofocus;
  final bool? enabled;
  final String? errorText;
  final String? label;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? minLine;
  final int? maxLength;
  final double? radius;
  final TextInputAction? action;
  final Color? borderColor;
  final Color? fillColor;
  final bool? isFilled;
  final List<TextInputFormatter>? formatters;
  final TextStyle? textStyle;

  final AutovalidateMode? autovalidateMode;
  const CustomTextField({
    Key? key,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obsecure,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    this.label,
    this.maxLength,
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.minLine,
    this.radius = 10,
    this.action,
    this.borderColor,
    this.fillColor,
    this.isFilled = false,
    this.autovalidateMode,
    this.formatters,
    this.textStyle,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      maxLength: widget.maxLength,
      keyboardType: widget.keyboardType,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingCompleted,
      controller: widget.controller,
      maxLines: null,
      minLines: widget.minLine,
      validator: widget.validator,
      textInputAction: widget.action,
      style: widget.textStyle ?? textFieldStyle,
      autovalidateMode: widget.autovalidateMode,
      inputFormatters: widget.formatters,

      // obscureText: widget.obsecure! ? true : false,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: textStyle14.copyWith(
          color: otherGrey,
          fontSize: 14,
        ),
        counterText: '',
        fillColor: widget.fillColor,
        filled: widget.isFilled,
        contentPadding: const EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(
            color: altoGrey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(
            color: altoGrey,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(
            color: altoGrey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.radius!),
          borderSide: BorderSide(
            color: widget.borderColor ?? primary,
          ),
        ),
      ),
    );
  }
}
