import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logitrack/modules/deliveryboy/screens/auth_service/signup.dart';
import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/home_page.dart';

import 'package:logitrack/modules/deliveryboy/widgets/container.dart';
import 'package:logitrack/modules/deliveryboy/widgets/textformwidget.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/textwidget.dart';

import '../../../../utils/colors.dart';

class LogginScreenDelivery extends StatelessWidget {
  LogginScreenDelivery({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveHelper.getWidth(context) * .080,
            // vertical: ResponsiveHelper.getHeight(context) * .080,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome',
                        style: GoogleFonts.heebo(
                          fontSize: ResponsiveHelper.getWidth(context) * .080,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .080,
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
                        controller: _nameController,
                        hint: 'Name',
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'required';
                          }
                          return null;
                        },
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
                        text: 'Password',
                        style: GoogleFonts.heebo(
                          fontSize: ResponsiveHelper.getWidth(context) * .040,
                        ),
                      ),
                      Textformwidget(
                        controller: _passwordController,
                        hint: 'password',
                        radius: ResponsiveHelper.getWidth(context) * .020,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'required';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  Row(
                    children: [
                      TExtWidget(
                        text: 'Forgot Password?',
                        style: GoogleFonts.heebo(
                          color: ColorsClass.SplashScreenbg,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .080,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomnavDelivery(
                                selectedindex: 0,
                              ),
                            ));
                      } else {
                        print('error');
                      }
                    },
                    child: ContainerWidget(
                      color: ColorsClass.SplashScreenbg,
                      width: ResponsiveHelper.getWidth(context) * .600,
                      height: ResponsiveHelper.getHeight(context) * .070,
                      text: 'Login',
                      radius: ResponsiveHelper.getWidth(context) * .050,
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: ResponsiveHelper.getWidth(context) * .030,
                        child: Divider(),
                      ),
                      Text('or'),
                      SizedBox(
                        width: ResponsiveHelper.getWidth(context) * .030,
                        child: Divider(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  Container(
                    width: ResponsiveHelper.getWidth(context) * .800,
                    height: ResponsiveHelper.getHeight(context) * .080,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        ResponsiveHelper.getWidth(context) * .020,
                      ),
                      border: Border.all(color: ColorsClass.SplashScreenbg),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ResponsiveHelper.getWidth(context) * .080,
                        ),
                        Image.asset(
                          'assets/images/Google.png',
                        ),
                        SizedBox(
                          width: ResponsiveHelper.getWidth(context) * .010,
                        ),
                        Text('Continue with google')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TExtWidget(
                        text: 'Create an account ?',
                        style: GoogleFonts.heebo(),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreenDelivery(),
                              ));
                        },
                        child: TExtWidget(
                          text: 'Sign in',
                          style: GoogleFonts.heebo(
                            color: ColorsClass.SplashScreenbg,
                            fontSize: ResponsiveHelper.getWidth(context) * .050,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
