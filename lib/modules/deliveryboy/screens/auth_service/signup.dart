import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';

import 'package:logitrack/modules/deliveryboy/widgets/container.dart';
import 'package:logitrack/modules/deliveryboy/widgets/textformwidget.dart';
import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/textwidget.dart';

class SignupScreenDelivery extends StatefulWidget {
  SignupScreenDelivery({super.key});

  @override
  State<SignupScreenDelivery> createState() => _SignupScreenDeliveryState();
}

class _SignupScreenDeliveryState extends State<SignupScreenDelivery> {
  int selectedIndex = 0;

  final _formKey = GlobalKey<FormState>();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _drivinglicenseController = TextEditingController();
  TextEditingController _vehiclenumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      'Get started',
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
                    Container(
                      child: Textformwidget(
                        hint: 'Name',
                        radius: ResponsiveHelper.getWidth(context) * .040,
                        controller: _usernameController,
                        validation: (value) {
                          if (value!.isEmpty) {
                            return 'please enter value';
                          }
                          return null;
                        },
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
                      text: 'Email',
                      style: GoogleFonts.heebo(
                        fontSize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                      hint: 'abcd45@gmail.com',
                      radius: ResponsiveHelper.getWidth(context) * .040,
                      controller: _emailController,
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
                      text: 'Your Driving license',
                      style: GoogleFonts.heebo(
                        fontSize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                      controller: _drivinglicenseController,
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

                // delivery vehicle
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: Container(
                        width: ResponsiveHelper.getWidth(context) * .250,
                        height: ResponsiveHelper.getHeight(context) * .110,
                        decoration: BoxDecoration(
                          color: selectedIndex == 0
                              ? ColorsClass.selectedvehicle
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getWidth(context) * .030,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height:
                                  ResponsiveHelper.getHeight(context) * .020,
                            ),
                            Image.asset('assets/images/Quad Bike.png'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Container(
                        width: ResponsiveHelper.getWidth(context) * .250,
                        height: ResponsiveHelper.getHeight(context) * .110,
                        decoration: BoxDecoration(
                          color: selectedIndex == 1
                              ? ColorsClass.selectedvehicle
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getWidth(context) * .030,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height:
                                  ResponsiveHelper.getHeight(context) * .020,
                            ),
                            Image.asset('assets/images/Truck.png'),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: Container(
                        width: ResponsiveHelper.getWidth(context) * .250,
                        height: ResponsiveHelper.getHeight(context) * .110,
                        decoration: BoxDecoration(
                          color: selectedIndex == 2
                              ? ColorsClass.selectedvehicle
                              : Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(
                            ResponsiveHelper.getWidth(context) * .030,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height:
                                  ResponsiveHelper.getHeight(context) * .020,
                            ),
                            Image.asset('assets/images/newordercont.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // SizedBox(
                //   height: ResponsiveHelper.getHeight(context) * .120,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Bike'),
                    Text('Car'),
                    Text('Truck'),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TExtWidget(
                      text: 'Your vehicle number',
                      style: GoogleFonts.heebo(
                        fontSize: ResponsiveHelper.getWidth(context) * .040,
                      ),
                    ),
                    Textformwidget(
                      radius: ResponsiveHelper.getWidth(context) * .020,
                      controller: _vehiclenumberController,
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
                      print('object');
                    }
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
    );
  }
}
