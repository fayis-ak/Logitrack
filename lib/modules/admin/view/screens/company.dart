import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/services/firebase_controller.dart';
import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/widgets/shimmer.dart';
import 'package:provider/provider.dart';

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

  return Consumer<FirebaseController>(
    builder: (context, instance, _) {
      return FutureBuilder(
        future: instance.companyfetch(),
        builder: (context, snapshot) {
          var snapshotdata = instance.company;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: Helper.W(context) * .020,
                    horizontal: Helper.W(context) * .020,
                  ),
                  child: GestureDetector(
                    onLongPress: () {
                      // delete
                    },
                    child: Container(
                      width: double.infinity,
                      height: Helper.H(context) * .920,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Helper.W(context) * .030,
                        ),
                        color: ColorsClass.blueshade,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: Helper.W(context) * .010,
                                horizontal: Helper.W(context) * .020),
                            child: Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(
                                Helper.W(context) * .020,
                              ),
                              child: Container(
                                width: Helper.W(context) * .800,
                                height: Helper.H(context) * .800,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                    Helper.W(context) * .020,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: snapshotdata.isEmpty
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.hourglass_empty)
                                                ],
                                              )
                                            : Padding(
                                                padding: EdgeInsets.all(
                                                    Helper.W(context) * .020),
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: ListView.separated(
                                                    itemCount:
                                                        snapshotdata.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Material(
                                                        elevation: 4,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                          Helper.W(context) *
                                                              .010,
                                                        ),
                                                        child: Container(
                                                          width: double.infinity,
                                                          height:
                                                              Helper.H(context) *
                                                                  .130,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color(0xFFECF1F4),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              Helper.W(context) *
                                                                  .010,
                                                            ),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5.0),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      width: Helper.W(
                                                                              context) *
                                                                          .050,
                                                                      height: Helper.H(
                                                                              context) *
                                                                          .030,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        image:
                                                                            DecorationImage(
                                                                          fit: BoxFit
                                                                              .cover,
                                                                          image:
                                                                              NetworkImage(
                                                                            snapshotdata[index]
                                                                                .imageurl,
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
                                                                          snapshotdata[index]
                                                                              .CompanyName,
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                Helper.W(context) * .015,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                            'Estimated'),
                                                                        Text(
                                                                            'Shipping Charge'),
                                                                      ],
                                                                    ),
                                                                    Spacer(), // Add spacer to push the next widget to the end
                                                                    Column(
                                                                      children: [
                                                                        Row(
                                                                          children: [
                                                                            Icon(
                                                                                Icons.star,
                                                                                color: Colors.yellow),
                                                                            Text(
                                                                                '4.0'),
                                                                          ],
                                                                        ),
                                                                        Text(
                                                                            '1 March'),
                                                                        Text(
                                                                            '\$${snapshotdata[index].CompanyCharge}'),
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
                                                    separatorBuilder:
                                                        (context, index) {
                                                      return SizedBox(
                                                        height:
                                                            Helper.H(context) *
                                                                .030,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              )),
                                    SizedBox(
                                      width: Helper.W(context) * .020,
                                    ),
                                    // Expanded(
                                    //   child: Padding(
                                    //     padding: EdgeInsets.all(
                                    //         Helper.W(context) * .020),
                                    //     child: Container(
                                    //       // color: Colors.red,
                                    //       child: ListView.separated(
                                    //           itemBuilder: (context, index) {
                                    //             return Material(
                                    //               elevation: 4,
                                    //               borderRadius:
                                    //                   BorderRadius.circular(
                                    //                 Helper.W(context) * .010,
                                    //               ),
                                    //               child: Container(
                                    //                 width: double.infinity,
                                    //                 height:
                                    //                     Helper.H(context) * .130,
                                    //                 decoration: BoxDecoration(
                                    //                   color: Color(0xFFECF1F4),
                                    //                   borderRadius:
                                    //                       BorderRadius.circular(
                                    //                     Helper.W(context) * .010,
                                    //                   ),
                                    //                 ),
                                    //                 child: Column(
                                    //                   children: [
                                    //                     Padding(
                                    //                       padding:
                                    //                           const EdgeInsets
                                    //                               .all(5.0),
                                    //                       child: Row(
                                    //                         children: [
                                    //                           Container(
                                    //                             width: Helper.W(
                                    //                                     context) *
                                    //                                 .050,
                                    //                             height: Helper.H(
                                    //                                     context) *
                                    //                                 .030,
                                    //                             decoration:
                                    //                                 BoxDecoration(
                                    //                               image:
                                    //                                   DecorationImage(
                                    //                                 image:
                                    //                                     AssetImage(
                                    //                                   imagecorier[
                                    //                                       index],
                                    //                                 ),
                                    //                               ),
                                    //                             ),
                                    //                           ),
                    
                                    //                           Column(
                                    //                             crossAxisAlignment:
                                    //                                 CrossAxisAlignment
                                    //                                     .start,
                                    //                             children: [
                                    //                               Text(
                                    //                                 snapshotdata[
                                    //                                         index]
                                    //                                     .CompanyName,
                                    //                                 style:
                                    //                                     TextStyle(
                                    //                                   fontWeight:
                                    //                                       FontWeight
                                    //                                           .bold,
                                    //                                   fontSize:
                                    //                                       Helper.W(context) *
                                    //                                           .015,
                                    //                                 ),
                                    //                               ),
                                    //                               Text(
                                    //                                   'Estimated'),
                                    //                               Text(
                                    //                                   'Shipping Charge'),
                                    //                             ],
                                    //                           ),
                                    //                           Spacer(), // Add spacer to push the next widget to the end
                                    //                           Column(
                                    //                             children: [
                                    //                               Row(
                                    //                                 children: [
                                    //                                   Icon(
                                    //                                       Icons
                                    //                                           .star,
                                    //                                       color: Colors
                                    //                                           .yellow),
                                    //                                   Text('4.0'),
                                    //                                 ],
                                    //                               ),
                                    //                               Text('1 March'),
                                    //                               Text('\$300'),
                                    //                             ],
                                    //                           ),
                                    //                         ],
                                    //                       ),
                                    //                     ),
                                    //                   ],
                                    //                 ),
                                    //               ),
                                    //             );
                                    //           },
                                    //           separatorBuilder: (context, index) {
                                    //             return SizedBox(
                                    //               height:
                                    //                   Helper.H(context) * .030,
                                    //             );
                                    //           },
                                    //           itemCount: snapshotdata.length),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
