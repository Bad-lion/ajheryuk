import 'package:ajheryuk/screens/course_detail.dart';
import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/app_bars/custom_app_bar.dart';
import 'package:ajheryuk/widgets/chips/scrollable_custom_chip.dart';
import 'package:ajheryuk/widgets/friend_list.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  final List<String> listImages = [
    'https://www.factroom.ru/wp-content/uploads/2019/04/5-osobennostej-klimata-pitera-o-kotoryh-vy-dolzhny-znat-esli-sobiraetes-syuda-priekhat.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
  ];
  MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        textOne: "Hello Mask",
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              'assets/icons/award.svg',
              color: AppColor.yellowEgg,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '16 000',
              style: GoogleFonts.poppins(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: AppColor.yellowEgg),
            ),
          ],
        ),
        color: AppColor.yellowEgg,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 16, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 75,
              child: FriendListWidegt(),
            ),
            SizedBox(
              height: 25,
            ),
            RichText(
              text: TextSpan(
                text: 'Upcoming ',
                style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.gray1),
                children: <TextSpan>[
                  TextSpan(
                    text: 'course of this week',
                    style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                        color: AppColor.gray1),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 41,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ScrollableSingleChip(),
              ),
            ),
            SizedBox(height: 24),
            CarouselImages(
              scaleFactor: 0.7,
              listImages: listImages,
              height: 360.0,
              borderRadius: 24.0,
              cachedNetworkImage: false,
              verticalAlignment: Alignment.center,
              onTap: (index) {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed(CourseDetailScreen.routName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
