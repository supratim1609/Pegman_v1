import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

TextStyle headerStyle =
    GoogleFonts.urbanist(fontSize: 35, fontWeight: FontWeight.w700);
TextStyle subHeaderStyle =
    GoogleFonts.urbanist(fontSize: 16.0, fontWeight: FontWeight.w500);

TextStyle textStyle8 = GoogleFonts.urbanist(fontSize: 8.0);
TextStyle textStyle10 = GoogleFonts.urbanist(fontSize: 10.0);
TextStyle textStyle12 = GoogleFonts.urbanist(fontSize: 12.0);
TextStyle textStyle14 = GoogleFonts.urbanist(fontSize: 14.0);
TextStyle textStyle16 = GoogleFonts.urbanist(fontSize: 16.0);
TextStyle textStyle18 = GoogleFonts.urbanist(fontSize: 18.0);

TextStyle textFieldStyle = GoogleFonts.urbanist(fontSize: 16.0);

TextStyle numberArchivoStyle = GoogleFonts.roboto();
TextStyle numberReadexStyle = GoogleFonts.roboto();

TextStyle bold20 =
    GoogleFonts.urbanist(fontWeight: FontWeight.w700, fontSize: 20);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(25),
  borderSide: const BorderSide(color: warGrey),
);

UnderlineInputBorder underlineInputBorder = const UnderlineInputBorder(
  borderSide: BorderSide(color: black),
);

InputBorder noborder = InputBorder.none;
