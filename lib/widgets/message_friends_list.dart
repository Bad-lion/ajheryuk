import 'package:ajheryuk/utils/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageFriendList extends StatelessWidget {
  final BuildContext context;
  MessageFriendList({Key? key, required this.context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSVVyE9C3wjVRHtaS9IHCiCJpqSEraahwjlDyt-KgxSh5xEdsVQXUUE7B8vpRQ-'),
                radius: 20,
              ),
              Column(
                children: [
                  Text(
                    'Ilon Mask',
                    style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1),
                  ),
                  Text(
                    'Hey, can i ask something? i need your help please',
                    style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: AppColor.gray2),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
