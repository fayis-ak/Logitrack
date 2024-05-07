import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/utils/colors.dart';

import '../../../../utils/responsivesize.dart';

Widget dashboard(context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: ResponsiveHelper.getWidth(context) * .020,
            horizontal: ResponsiveHelper.getWidth(context) * .020,
          ),
          child: Container(
            width: double.infinity,
            height: ResponsiveHelper.getHeight(context) * .950,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getWidth(context) * .030,
              ),
              color: ColorsClass.blueshade,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveHelper.getWidth(context) * .020,
                    vertical: ResponsiveHelper.getWidth(context) * .020,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: ResponsiveHelper.getWidth(context) * .750,
                        height: ResponsiveHelper.getHeight(context) * .350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getWidth(context) * .020),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/Rectangle 86.png',
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveHelper.getWidth(context) * .040,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: ResponsiveHelper.getWidth(context) * .200,
                        height: ResponsiveHelper.getHeight(context) * .350,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(
                          //     ResponsiveHelper.getWidth(context) * .020),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/image 60.png')),
                        ),
                      ),

                      //
                      SizedBox(
                        width: ResponsiveHelper.getWidth(context) * .030,
                      ),

                      Container(
                        width: ResponsiveHelper.getWidth(context) * .200,
                        height: ResponsiveHelper.getHeight(context) * .250,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.circular(
                          //     ResponsiveHelper.getWidth(context) * .020),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/image 59.png',
                              )),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
