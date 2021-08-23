import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends AppBar {
  final BuildContext context;
  final String textOne;
  final Widget widget;
  final Color color;

  CustomAppBar({
    required this.color,
    required this.textOne,
    required this.widget,
    Key? key,
    required this.context,
  }) : super(
          key: key,
          toolbarHeight: 65,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: SvgPicture.asset('assets/icons/notifications.svg'),
            )
          ],
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSVVyE9C3wjVRHtaS9IHCiCJpqSEraahwjlDyt-KgxSh5xEdsVQXUUE7B8vpRQ-'),
                radius: 20,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textOne,
                    style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: AppColor.gray1),
                  ),
                  Row(
                    children: [widget],
                  )
                ],
              )
            ],
          ),
        );
}
