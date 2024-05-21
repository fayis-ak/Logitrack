import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:logitrack/models/addproductorder.dart';

import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/order/shipment_details.dart';
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';
import 'package:logitrack/services/firebase_controller.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Orderbottomdelivery extends StatelessWidget {
  Orderbottomdelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request'),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Helper.W(context) * .050,
            // vertical: ResponsiveHelper.getWidth(context) * .050,
          ),
          child: Consumer<FirebaseController>(
            builder: (context, instence, _) {
              return StreamBuilder(
                stream: instence.fetchingproductorder().asStream(),
                builder: (context, snapshot) {
                  final sineldocdata = instence.deliveryaccesprdoct;
                  if (sineldocdata.isEmpty) {
                    return Center(
                      child: TextWidget(
                          text: 'No order This time',
                          style: TextStyle(
                            fontSize: Helper.W(context) * .050,
                            color: CupertinoColors.activeBlue,
                          )),
                    );
                  }

                  // log(sineldocdata[index]);

                  return ListView.separated(
                    itemCount: sineldocdata.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShipmentDetails(
                                  indexdata: sineldocdata[index],
                                ),
                              ));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: Helper.W(context) * .030,
                            ),
                            Container(
                              width: double.infinity,
                              height: Helper.H(context) * .200,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(
                                  Helper.W(context) * .030,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Helper.W(context) * .020,
                                  horizontal: Helper.W(context) * .030,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextWidget(
                                              text: sineldocdata[index]
                                                  .Deliveryname,
                                              style: AppTextStyles.boldText(
                                                fontSize:
                                                    Helper.W(context) * .050,
                                              ),
                                            ),
                                            TextWidget(
                                              text: '12 march 2024 on 3:00 pm',
                                              style: TextStyle(
                                                fontSize:
                                                    Helper.W(context) * .030,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            TextWidget(
                                              text: sineldocdata[index]
                                                  .Deliveryadress,
                                              style:
                                                  AppTextStyles.regularText(),
                                            ),
                                            TextWidget(
                                              text:
                                                  '54 W Nob Hill Blvd City/Town Yakima State/\n Postal Code98902',
                                              style: AppTextStyles.regularText(
                                                fontSize:
                                                    Helper.W(context) * .025,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: Helper.W(context) * .030,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: Helper.H(context) * .030,
                      );
                    },
                  );
                },
              );
            },
          )),
    );
  }
}
