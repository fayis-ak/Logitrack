import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/utils/colors.dart';

import '../../../../utils/responsivesize.dart';

Widget Company(context) {
  List<String> coriername = [
    'FedEx',
    'GATI',
    'DHL',
    'Blue Dart',
    'Shipway',
    'DTDC'
  ];

  List<String> imagecorier = [
    'asset/courier/bluedat.png',
    'assets/courier/gati.png',
    'assets/courier/djl.png',
    'asset/courier/bluedat.png',
    'assets/courier/shipaway.png',
    'assets/courier/dtdc.png',
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
                                          width: double.infinity,
                                          height: ResponsiveHelper.getHeight(
                                                  context) *
                                              .130,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFECF1F4),
                                            borderRadius: BorderRadius.circular(
                                              ResponsiveHelper.getWidth(
                                                      context) *
                                                  .010,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: ResponsiveHelper
                                                              .getWidth(
                                                                  context) *
                                                          .050,
                                                      height: ResponsiveHelper
                                                              .getHeight(
                                                                  context) *
                                                          .030,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            imagecorier[index],
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          coriername[index],
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: ResponsiveHelper
                                                                    .getWidth(
                                                                        context) *
                                                                .015,
                                                          ),
                                                        ),
                                                        Text('Estimated'),
                                                        Text('Shipping Charge'),
                                                      ],
                                                    ),
                                                    Spacer(), // Add spacer to push the next widget to the end
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(Icons.star,
                                                                color: Colors
                                                                    .yellow),
                                                            Text('4.0'),
                                                          ],
                                                        ),
                                                        Text('1 March'),
                                                        Text('\$300'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
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
                                          width: double.infinity,
                                          height: ResponsiveHelper.getHeight(
                                                  context) *
                                              .130,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFECF1F4),
                                            borderRadius: BorderRadius.circular(
                                              ResponsiveHelper.getWidth(
                                                      context) *
                                                  .010,
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: ResponsiveHelper
                                                              .getWidth(
                                                                  context) *
                                                          .050,
                                                      height: ResponsiveHelper
                                                              .getHeight(
                                                                  context) *
                                                          .030,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                            imagecorier[index],
                                                          ),
                                                        ),
                                                      ),
                                                    ),

                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          coriername[index],
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: ResponsiveHelper
                                                                    .getWidth(
                                                                        context) *
                                                                .015,
                                                          ),
                                                        ),
                                                        Text('Estimated'),
                                                        Text('Shipping Charge'),
                                                      ],
                                                    ),
                                                    Spacer(), // Add spacer to push the next widget to the end
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Icon(Icons.star,
                                                                color: Colors
                                                                    .yellow),
                                                            Text('4.0'),
                                                          ],
                                                        ),
                                                        Text('1 March'),
                                                        Text('\$300'),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
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
