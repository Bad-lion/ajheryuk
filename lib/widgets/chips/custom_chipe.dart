import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends Container {
  final BuildContext? context;
  final String? text;

  CustomChip({this.context, required this.text, Key? key})
      : super(
          key: key,
          height: 41,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: AppColor.backgroundRed,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            text!,
            style: GoogleFonts.poppins(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        );
}
