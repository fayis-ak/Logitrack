 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logitrack/modules/company/widgets/container.dart';
import 'package:logitrack/modules/company/widgets/textformwidget.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/responsivesize.dart';
import '../../../../../../widgets/textwidget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'),
      ),
      body: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveHelper.getWidth(context) * .080,
            // vertical: ResponsiveHelper.getHeight(context) * .080,
          ),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      'assets/images/Ellipse 26.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TExtWidget(
                        text: 'Company name',
                        style: GoogleFonts.heebo(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        hint: 'Name',
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
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
                        text: 'Email',
                        style: GoogleFonts.heebo(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        hint: 'abcd45@gmail.com',
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
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
                        text: 'Company  license',
                        style: GoogleFonts.heebo(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
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
                        text: 'Company location',
                        style: GoogleFonts.inter(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
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
                        text: 'Password',
                        style: GoogleFonts.inter(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  GestureDetector(
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   context.goNamed('home');
                      // } else {
                      //   print('object');
                      // }
                    },
                    child: ContainerWidget(
                      color: ColorsClass.SplashScreenbg,
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
        ),
      ),
    );
  }
}
