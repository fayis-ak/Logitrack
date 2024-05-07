import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/container.dart';
import 'package:logitrack/widgets/textformwidget.dart';
import 'package:logitrack/widgets/textwidget.dart';

class SignupScreenUser extends StatelessWidget {
  const SignupScreenUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .080,
          // vertical: ResponsiveHelper.getHeight(context) * .080,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .080,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: GoogleFonts.heebo(
                      fontSize: ResponsiveHelper.getWidth(context) * .060,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .050,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TExtWidget(
                    text: 'Username',
                    style: GoogleFonts.heebo(
                      fontSize: ResponsiveHelper.getWidth(context) * .040,
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Textformwidget(
                      hint: 'Name',
                      radius: ResponsiveHelper.getWidth(context) * .020,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TExtWidget(
                    text: 'abcd45@gmail.com',
                    style: GoogleFonts.heebo(
                      fontSize: ResponsiveHelper.getWidth(context) * .040,
                    ),
                  ),
                  Textformwidget(
                    hint: 'password',
                    radius: ResponsiveHelper.getWidth(context) * .080,
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TExtWidget(
                    text: 'Username',
                    style: GoogleFonts.heebo(
                      fontSize: ResponsiveHelper.getWidth(context) * .040,
                    ),
                  ),
                  Textformwidget(
                    hint: 'Name',
                    radius: ResponsiveHelper.getWidth(context) * .020,
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TExtWidget(
                    text: 'Conform password',
                    style: GoogleFonts.heebo(
                      fontSize: ResponsiveHelper.getWidth(context) * .040,
                    ),
                  ),
                  Textformwidget(
                    hint: 'conform password',
                    radius: ResponsiveHelper.getWidth(context) * .080,
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .120,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomnavUser(
                          selectedindex: 0,
                        ),
                      ));
                },
                child: ContainerWidget(
                  width: ResponsiveHelper.getWidth(context) * .600,
                  height: ResponsiveHelper.getHeight(context) * .070,
                  text: 'Sign up',
                  radius: ResponsiveHelper.getWidth(context) * .050,
                ),
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
