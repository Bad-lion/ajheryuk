import 'package:ajheryuk/screens/availible_time_screen.dart';
import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/app_bars/course_detail_appbar.dart';
import 'package:ajheryuk/widgets/chips/descrition_custom_chip.dart';
import 'package:ajheryuk/widgets/course_card_widget.dart';
import 'package:ajheryuk/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetailScreen extends StatelessWidget {
  static String routName = '/courseDetail';
  CourseDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomCourseDetailAppBar(context: context),
      body: Padding(
        padding: EdgeInsets.only(top: 32, left: 16, right: 16),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.black54),
                    child: Image.asset(
                      'assets/images/back1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Step design sprint for beginner',
                    style: GoogleFonts.poppins(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1),
                  ),
                  SizedBox(height: 16),
                  Container(
                    child: Wrap(
                      children: [
                        DescriptionCustomChip(text: '6 lesson'),
                        DescriptionCustomChip(text: 'Design'),
                        DescriptionCustomChip(text: 'Free'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "In this course I'll show the step by step, day by day process to build better products, just as Google, Slack, KLM and manu other do.",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.gray3),
                  ),
                  SizedBox(height: 23),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSVVyE9C3wjVRHtaS9IHCiCJpqSEraahwjlDyt-KgxSh5xEdsVQXUUE7B8vpRQ-'),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ilon Mask',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.gray1),
                                ),
                                Text(
                                  'SpaceX director',
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.gray3),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/stopwatch.svg'),
                                        SizedBox(width: 10),
                                        Text(
                                          '5h 21m',
                                          style: GoogleFonts.poppins(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 12),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColor.yellowOmlette),
                                      child: Text(
                                        'Free e-book',
                                        style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 28),
                  CourseCardWidget(
                      context: context,
                      textOne:
                          'How to get feedback on their products in just 5 days',
                      picture: 'assets/icons/play_button.svg',
                      textTwo: '04:10m'),
                  CourseCardWidget(
                      context: context,
                      textOne:
                          'How to get feedback on their products in just 5 days',
                      picture: 'assets/icons/play_button.svg',
                      textTwo: '04:10m'),
                  CourseCardWidget(
                      context: context,
                      textOne:
                          'How to get feedback on their products in just 5 days',
                      picture: 'assets/icons/play_button.svg',
                      textTwo: '04:10m'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Wrap(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.87,
                          child: AvailableScreen(),
                        ),
                      ]),
                    );
                  },
                  child: MainButton(
                    context: context,
                    func: (context) => buttonPress(contexts: context),
                    key: key,
                    color: AppColor.backgroundRed,
                    widgets: Text('Follow class'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buttonPress({BuildContext? contexts}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: contexts!,
      backgroundColor: Colors.transparent,
      builder: (context) => Wrap(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.87,
          child: AvailableScreen(),
        ),
      ]),
    );
  }
}
