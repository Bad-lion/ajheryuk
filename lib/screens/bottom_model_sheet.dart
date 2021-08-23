import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/chips/custom_chipe.dart';
import 'package:ajheryuk/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableScreen extends StatefulWidget {
  // final Function? addCallBack;
  // final String? string;
  // String? _taskTitle;

  @override
  _AvailableScreenState createState() => _AvailableScreenState();
}

class _AvailableScreenState extends State<AvailableScreen> {
  @override
  Widget build(BuildContext context) {
    bool _chekcBox = false;

    void _toggleCheckBox() {
      setState(() {
        _chekcBox = !_chekcBox;
      });
    }

    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      padding: EdgeInsets.all(20.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.grayC4),
              ),
              SizedBox(height: 24),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available time',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF333333)),
                        ),
                        Text(
                          'Adjust to your schedule',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.gray2),
                        ),
                      ],
                    ),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColor.gray3,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/calendar.svg',
                        fit: BoxFit.none,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                        CustomChip(text: 'All'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: AppColor.gray6,
                          filled: true,
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Telp number',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1,
                      ),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          fillColor: AppColor.gray6,
                          filled: true,
                          labelText: "Number",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Schedule date & time',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColor.gray1,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Checkbox(
                          fillColor:
                              MaterialStateProperty.all(AppColor.backgroundRed),
                          value: _chekcBox,
                          onChanged: (value) {
                            _toggleCheckBox;
                          },
                        ),
                        Text(
                          '12 October, 2020 at 09.45 AM',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColor.gray3),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
                    MainButton(
                      func: (context) {},
                      color: AppColor.button1,
                      widgets: Text(
                        'Log in',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
