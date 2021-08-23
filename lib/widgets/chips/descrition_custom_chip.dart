import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionCustomChip extends Container {
  final BuildContext? context;
  final String? text;

  DescriptionCustomChip({this.context, required this.text, Key? key})
      : super(
          key: key,
          height: 19,
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            text!,
            style: GoogleFonts.poppins(
                fontSize: 10, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        );
}
