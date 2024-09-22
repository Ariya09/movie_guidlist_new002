import 'package:flutter/cupertino.dart';

class TextWidget {
  static String capitalize(String text) {
    return text[0].toUpperCase() + text.substring(1);
  }
  static Text headerText(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        height: 1,
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
  static Text normalText(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
  static Text normalTextBold(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  static Text descriptionText(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF838383),
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
  static Text underlineText(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: TextDecoration.underline,
        decorationColor: color ?? const Color(0xFF000000),
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
  static Text smallText1(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
  static Text smallText1Bold(String text, {Color? color, double? fontSize, FontWeight? fontWeight, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? const Color(0xFF000000),
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

}