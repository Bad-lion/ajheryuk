import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCourseDetailAppBar extends AppBar {
  final BuildContext context;

  CustomCourseDetailAppBar({
    Key? key,
    required this.context,
  }) : super(
          key: key,
          automaticallyImplyLeading: false,
          toolbarHeight: 65,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline),
                color: AppColor.backgroundRed,
              ),
            )
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.gray6),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: AppColor.backgroundRed,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              Text(
                'Course Detailes',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.gray1,
                ),
              ),
            ],
          ),
        );
}
