// typography of app
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TypoText {

  final String text;
  final Color color;

  TypoText({
    required this.text,
    required this.color,
  });

  large() => Text(text, style: GoogleFonts.inter(fontSize: 25.0, fontWeight: FontWeight.w700, color: color));
  h1() => Text(text, style: GoogleFonts.inter(fontSize: 19.0, fontWeight: FontWeight.w700, color: color));
  h2() => Text(text, style: GoogleFonts.inter(fontSize: 17.0, fontWeight: FontWeight.w700, color: color));
  h3() => Text(text, style: GoogleFonts.inter(fontSize: 15.0, fontWeight: FontWeight.w700, color: color));

}