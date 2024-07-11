import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Utils {
  Utils._();

  static TextStyle setFontStyle({
    required double fontSize,
    required FontWeight fontWeight,
    required Color textColor,
  }) {
    return GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: fontSize.sp,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}