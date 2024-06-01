import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/models/addproductorder.dart';
import 'package:logitrack/models/prductmodel.dart';
import 'package:logitrack/modules/company/utils/colors.dart';
import 'package:logitrack/modules/company/widgets/text_style.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/modules/user/screens/pages/routes/home/shipway.dart';
import 'package:logitrack/modules/user/screens/pages/routes/profile/payment.dart';
import 'package:logitrack/services/firebase_controller.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:provider/provider.dart';

class CourierServicesUser extends StatelessWidget {
  CourierServicesUser({
    super.key,
  });

  

 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courier Services'),
      ),
      body: Consumer<FirebaseController>(
        builder: (context, instance, child) {
          return StreamBuilder(
            stream: instance.companyfetch().asStream(),
            builder: (context, snapshot) {
              var snapshotdt = instance.company;

              if (snapshotdt.isEmpty) {
                return Center(
                  child: TextWidget(
                    text: 'No Courier Service Available!',
                    style: TextStyle(
                      fontSize: Helper.W(context) * .050,
                      color: CupertinoColors.activeBlue,
                    ),
                  ),
                );
              }

              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: Helper.H(context) * .030,
                        );
                      },
                      itemCount: snapshotdt.length,
                      itemBuilder: (context, index) {
                        // log('${snapshotdt[index].imageurl}');

                        final img = snapshotdt[index].imageurl;

                        return GestureDetector(
                          onTap: () {
                            if (snapshotdt[index].wdwide) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Shipway(
                                    Selectedindex: snapshotdt[index],
                                  ),
                                ),
                              );
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PaymentUser(
                                    Selectedindex: snapshotdt[index],
                                  ),
                                ),
                              );
                            }

                            // log('delivery charge ${instance.prdctprice(int.parse(snapshotdt[index].CompanyCharge))}');
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: Helper.W(context) * .040,
                            ),
                            child: Material(
                              elevation: 4,
                              borderRadius: BorderRadius.circular(
                                Helper.W(context) * .030,
                              ),
                              child: Container(
                                width: double.infinity,
                                height: Helper.H(context) * .160,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 90,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                // color: Colors.red,
                                                // image: DecorationImage(
                                                //   image:
                                                //       snapshotdt[index].imageurl
                                                //           ? Icon(Icons.image)
                                                //           : NetworkImage(
                                                //               snapshotdt[index]
                                                //                   .imageurl,
                                                //             ),
                                                // ),
                                                image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(
                                                img,
                                              ),
                                            )),
                                          ),
                                          SizedBox(
                                            width: Helper.W(context) * .030,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                snapshotdt[index].CompanyName,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      Helper.W(context) * .050,
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
                                                      color: Colors.yellow),
                                                  Text('4.0'),
                                                ],
                                              ),
                                              Text('1 March'),
                                              // Text('\$ ${shpingfee[index]}'),
                                              Text(snapshotdt[index]
                                                  .CompanyCharge)
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: Helper.H(context) * .020,
                                    ),
                                    // if (index == 4)
                                    Visibility(
                                      visible: snapshotdt[index].wdwide,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: ColorsClass.redcolor,
                                          ),
                                        ),
                                        child:
                                            Text('This is worl wide courier'),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
      bottomNavigationBar: mynav(
        index: 0,
        onTap: (index) {
          if (index == 0 ||
              index == 1 ||
              index == 2 ||
              index == 3 ||
              index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomnavUser(selectedindex: index),
              ),
            );
          }
        },
      ),
    );
  }
}
