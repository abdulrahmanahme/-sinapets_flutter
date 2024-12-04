import 'package:flutter/material.dart';
import 'package:sinapets_flutter/core/app_color.dart';

class DefaultOutlinedButton extends StatelessWidget {
  final void Function()? function;
  final String title;
  final double? width;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Color? borderColor;
  final Color? buttonColor; 
  final double? border;

  const DefaultOutlinedButton({
    Key? key,
    required this.title,
    required this.function,
    this.width,
    this.fontSize,
    this.height,
    this.borderColor,
    this.textColor,
    this.buttonColor,
    this.border,
    this.fontWeight,
  }) : super(key: key);
////////////// add H with height and W widget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 342,
      height: height ?? 50,
      child: OutlinedButton(
        onPressed: function,
        style: OutlinedButton.styleFrom(
          // foregroundColor: textColor ?? ColorManager.primary, // Text color
          side: BorderSide(
            color: borderColor ?? ColorManager.primary, // Border color
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border ?? 20),
          ),
          // backgroundColor: buttonColor ?? Colors.transparent, // Optional background
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 20,
            fontWeight: fontWeight ?? FontWeight.w500,
            fontFamily: 'Tajawal',
          ),
        ),
      ),
    );
  }
}
