import 'package:ajheryuk/screens/log_in.dart';
import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/dismiss_keyboard.dart';
import 'package:ajheryuk/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/logo/logo2.svg',
                  fit: BoxFit.none,
                ),
                // SvgPicture.asset('assets/logo/logo_text.svg'),
                SizedBox(height: 80),
                Text(
                  'Welcom to Ajheryuk',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0,
                      color: AppColor.gray1),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Best and popular apps for live education course from home',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: AppColor.gray2),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 64.0,
                ),
                MainButton(
                  context: context,
                  func: (context) {
                    Navigator.of(context).pushNamed(LogInScreen.routName);
                  },
                  color: AppColor.button1,
                  widgets: Text('Get Start'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
