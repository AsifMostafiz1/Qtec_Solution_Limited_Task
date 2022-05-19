import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constant{
  static const primaryColor =  Color(0xfff7f2ff);
  static const secondaryColor =  Color(0xffffffff);
}


TextStyle get titleStyle{
  return GoogleFonts.lato(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black87

  );
}

TextStyle get subTitleStyle{
  return GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black54

  );
}