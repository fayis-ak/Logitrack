import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/utils/colors.dart';

import '../../../../utils/responsivesize.dart';

Widget notification(context) {
  List<String> notification = [
    'New order has been placed',
    'New order has been placed',
    'New order has been placed',
    'The order has been cancelled',
    'Payment succesful',
    'New order has been placed',
    'The order has been canceled',
    'New order has been canceled',
    'Payment succesful',
    'New order has been placed',
  ];

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
            height: ResponsiveHelper.getHeight(context) * .920,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                ResponsiveHelper.getWidth(context) * .030,
              ),
              color: ColorsClass.blueshade,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: ResponsiveHelper.getHeight(context) * .050,
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: ResponsiveHelper.getWidth(context) * .010,
                      horizontal: ResponsiveHelper.getWidth(context) * .020),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .020,
                    ),
                    child: Container(
                      width: ResponsiveHelper.getWidth(context) * .800,
                      height: ResponsiveHelper.getHeight(context) * .800,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          ResponsiveHelper.getWidth(context) * .020,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(
                                ResponsiveHelper.getWidth(context) * .020,
                              ),
                              child: Container(
                                // color: Colors.red,
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Material(
                                        elevation: 4,
                                        borderRadius: BorderRadius.circular(
                                          ResponsiveHelper.getWidth(context) *
                                              .010,
                                        ),
                                        child: Container(
                                          width: ResponsiveHelper.getWidth(
                                                  context) *
                                              .300,
                                          height: ResponsiveHelper.getHeight(
                                                  context) *
                                              .090,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD3EBF7),
                                            borderRadius: BorderRadius.circular(
                                              ResponsiveHelper.getWidth(
                                                      context) *
                                                  .010,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width:
                                                    ResponsiveHelper.getWidth(
                                                            context) *
                                                        .020,
                                              ),
                                              Container(
                                                width:
                                                    ResponsiveHelper.getWidth(
                                                            context) *
                                                        .050,
                                                height:
                                                    ResponsiveHelper.getHeight(
                                                            context) *
                                                        .030,
                                                color: Colors.green,
                                              ),
                                              Text(notification[index])
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: ResponsiveHelper.getHeight(
                                                context) *
                                            .030,
                                      );
                                    },
                                    itemCount: 6),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ResponsiveHelper.getWidth(context) * .020,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.all(
                                  ResponsiveHelper.getWidth(context) * .020),
                              child: Container(
                                // color: Colors.red,
                                child: ListView.separated(
                                    itemBuilder: (context, index) {
                                      return Material(
                                        elevation: 4,
                                        borderRadius: BorderRadius.circular(
                                          ResponsiveHelper.getWidth(context) *
                                              .010,
                                        ),
                                        child: Container(
                                          width: ResponsiveHelper.getWidth(
                                                  context) *
                                              .300,
                                          height: ResponsiveHelper.getHeight(
                                                  context) *
                                              .090,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFD3EBF7),
                                            borderRadius: BorderRadius.circular(
                                              ResponsiveHelper.getWidth(
                                                      context) *
                                                  .010,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width:
                                                    ResponsiveHelper.getWidth(
                                                            context) *
                                                        .020,
                                              ),
                                              Container(
                                                width:
                                                    ResponsiveHelper.getWidth(
                                                            context) *
                                                        .050,
                                                height:
                                                    ResponsiveHelper.getHeight(
                                                            context) *
                                                        .030,
                                                color: Colors.green,
                                              ),
                                              Text('New order has been placed')
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: ResponsiveHelper.getHeight(
                                                context) *
                                            .030,
                                      );
                                    },
                                    itemCount: 5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
