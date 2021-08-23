import 'package:ajheryuk/utils/app_color.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableSingleChip extends StatefulWidget {
  @override
  _ScrollableSingleChipState createState() => _ScrollableSingleChipState();
}

class _ScrollableSingleChipState extends State<ScrollableSingleChip> {
  int tag = 0;
  List<String> options = [
    'All',
    'UX/UI',
    'Illustration',
    '3D Animation',
  ];

  @override
  Widget build(BuildContext context) {
    return ChipsChoice.single(
      value: tag,
      onChanged: (int val) => setState(() => tag = val),
      choiceItems: C2Choice.listFrom(
        source: options,
        value: (i, v) => i,
        label: (i, String v) => v,
      ),
      choiceStyle: C2ChoiceStyle(
          showCheckmark: false,
          margin: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 0),
          borderRadius: BorderRadius.circular(8),
          color: AppColor.gray6,
          brightness: Brightness.dark,
          labelStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColor.gray3)),
      choiceActiveStyle: C2ChoiceStyle(
          showCheckmark: false,
          borderRadius: BorderRadius.circular(8),
          color: AppColor.backgroundRed,
          borderColor: Colors.transparent,
          labelStyle: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
    );
  }
}
