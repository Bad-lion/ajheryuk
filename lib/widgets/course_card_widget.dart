import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCardWidget extends Container {
  final String picture;
  final String textOne;
  final String textTwo;
  final BuildContext context;
  CourseCardWidget(
      {required this.context,
      required this.textOne,
      required this.picture,
      required this.textTwo,
      Key? key})
      : super(
          key: key,
          height: 83,
          margin: EdgeInsets.only(bottom: 8),
          padding: EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                picture,
              ),
              SizedBox(
                width: 16,
              ),
              Container(
                width: 240,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textOne,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1,
                      ),
                    ),
                    Text(
                      textTwo,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.gray2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
}
