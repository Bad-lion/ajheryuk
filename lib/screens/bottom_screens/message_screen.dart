import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/app_bars/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        context: context,
        textOne: "My messages",
        widget: Text(
          '2 new messages',
          style: GoogleFonts.poppins(
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
              color: AppColor.gray4),
        ),
        color: AppColor.gray4,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  fillColor: AppColor.gray6,
                  filled: true,
                  labelText: "Search here",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColor.backgroundRed),
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.70,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (ctx, index) => Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSVVyE9C3wjVRHtaS9IHCiCJpqSEraahwjlDyt-KgxSh5xEdsVQXUUE7B8vpRQ-'),
                                radius: 20,
                              ),
                              SizedBox(width: 16),
                              Container(
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '15 min',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.gray4),
                                  ),
                                  SizedBox(height: 20),
                                  CircleAvatar(
                                    child: Text('4'),
                                    radius: 12,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Divider()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
