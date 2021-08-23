import 'package:ajheryuk/screens/log_in.dart';
import 'package:ajheryuk/utils/app_color.dart';
import 'package:ajheryuk/widgets/dismiss_keyboard.dart';
import 'package:ajheryuk/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  static String routName = '/sign';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/logo/logo.svg'),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                fillColor: AppColor.gray6,
                                filled: true,
                                labelText: "Fullname",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                          SizedBox(height: 16.0),
                          //TODO: normal text field
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
                          SizedBox(height: 16.0),
                          TextFormField(
                            //TODO add obsecure togle
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: AppColor.gray6,
                                filled: true,
                                labelText: "Password",
                                suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6),
                                    borderSide: BorderSide.none)),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          MainButton(
                            func: (context) {},
                            color: AppColor.button1,
                            widgets: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 32.0),
                          Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Divider(),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Center(
                                  child: Text(
                                    'or',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.gray2),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          MainButton(
                            func: (context) {},
                            color: AppColor.button2,
                            widgets: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook),
                                SizedBox(width: 18.0),
                                Text('Log in with Facebook',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(height: 16.0),
                          MainButton(
                            func: (context) {},
                            enableBorderSide: true,
                            color: AppColor.button3,
                            widgets: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/google.svg'),
                                SizedBox(width: 18.0),
                                Text(
                                  'Log in with Google',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                      color: AppColor.gray1),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By signing up you accept the ',
                              style: GoogleFonts.poppins(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.gray2),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms of Service ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.blue1),
                                ),
                                TextSpan(
                                  text: 'and',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.gray2),
                                ),
                                TextSpan(
                                  text: ' Privacy Policy',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.blue1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(LogInScreen.routName);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColor.gray2),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Log in',
                          style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: AppColor.blue1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
