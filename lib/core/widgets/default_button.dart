import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sinapets_flutter/core/app_color.dart';

class DefaultButton extends StatelessWidget {
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

  const DefaultButton({
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
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? ColorManager.primary,
          foregroundColor: textColor ?? ColorManager.white, // Text color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(border ?? 10),
            side: borderColor == null
                ? BorderSide.none
                : BorderSide(color: borderColor!),
          ),
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
