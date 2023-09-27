

import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appTextStyle( {required Color color,required FontWeight weight, required double size}){
  return GoogleFonts.roboto(
    color: color,
    fontWeight: weight,
    fontSize:size,
  );
}