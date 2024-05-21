import 'dart:developer';
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:logitrack/models/addproductorder.dart';
import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';

import 'package:logitrack/modules/deliveryboy/widgets/container.dart';
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';
import 'package:logitrack/services/firebase_controller.dart';
import 'package:logitrack/tsetssss.dart';
import 'package:provider/provider.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/responsivesize.dart';

class ShipmentDetails extends StatefulWidget {
  final Addproductmodel indexdata;
  const ShipmentDetails({super.key, required this.indexdata});

  @override
  State<ShipmentDetails> createState() => _ShipmentDetailsState();
}

class _ShipmentDetailsState extends State<ShipmentDetails> {
  bool _isSelected = false;
  bool _isSelected2 = false;

  bool _isSelected3 = false;

  bool _isSelected4 = false;

  bool _isSelected5 = false;

  List orderstaus = [
    'Order conFormed',
    'Vehicle Assaigned',
    'shipment picked',
    'in transit',
    'Shipment delivery',
  ];

  int orderstus = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shipment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Helper.W(context) * .050,
              ),
              child: Column(
                children: [
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(
                      Helper.W(context) * .050,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: Helper.H(context) * .250,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(
                          Helper.W(context) * .050,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: Helper.W(context) * .030,
                                left: Helper.W(context) * .030,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.indexdata.Deliveryname,
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .050,
                                    ),
                                  ),
                                  Text(
                                    widget.indexdata.orderdate.toString(),
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .030,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Pickup From',
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .050,
                                    ),
                                  ),
                                  Text(
                                    widget.indexdata.Pickupaddress,
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .030,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: Helper.W(context) * .030),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: Helper.W(context) * .030,
                                left: Helper.W(context) * .030,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ContainerWidget(
                                    color: ColorsClass.greenColor,
                                    width: Helper.W(context) * .250,
                                    height: Helper.H(context) * .030,
                                    text: 'Accept',
                                    radius: Helper.W(context) * .030,
                                  ),
                                  SizedBox(
                                    height: Helper.H(context) * .030,
                                  ),
                                  Text(
                                    'Delivery to',
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .050,
                                    ),
                                  ),
                                  Text(
                                    '${widget.indexdata.Deliveryadress}',
                                    style: AppTextStyles.regularText(
                                      fontSize: Helper.W(context) * .030,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Helper.H(context) * .030,
                  ),
                  // MyCheckboxListTile(
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _isSelected = value!;
                  //     });
                  //   },
                  //   title: 'Shipment Created',
                  //   value: _isSelected,
                  // ),
                  // SizedBox(
                  //   height: Helper.H(context) * .020,
                  // ),
                  // MyCheckboxListTile(
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _isSelected2 = value!;
                  //     });
                  //   },
                  //   title: 'Vehicle Assigned',
                  //   value: _isSelected2,
                  // ),
                  // SizedBox(
                  //   height: Helper.H(context) * .020,
                  // ),
                  // MyCheckboxListTile(
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _isSelected3 = value!;
                  //     });
                  //   },
                  //   title: 'Shipment Picked',
                  //   value: _isSelected3,
                  // ),
                  // SizedBox(
                  //   height: Helper.H(context) * .020,
                  // ),
                  // MyCheckboxListTile(
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _isSelected4 = value!;
                  //     });
                  //   },
                  //   title: 'In Transit',
                  //   value: _isSelected4,
                  // ),
                  // SizedBox(
                  //   height: Helper.H(context) * .020,
                  // ),
                  // MyCheckboxListTile(
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _isSelected5 = value!;
                  //     });
                  //   },
                  //   title: 'Shipment Delivered',
                  //   value: _isSelected5,
                  // ),

                  Consumer<FirebaseController>(
                    builder: (context, instance, _) {
                      return FutureBuilder(
                          future: instance.deliverystatus(widget.indexdata.id),
                          builder: (context, snapshot) {
                            final data = instance.deliverydetails;

                            // log(widget.indexdata.id as String);

                            // log(data!.orderstatus.toString());

                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Text('Order request'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(data!.orderstatus.toString()),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          db
                                              .collection('addNewOrder')
                                              .doc(widget.indexdata.id)
                                              .update({
                                            'orderstatus': 'order pending'
                                          });
                                        },
                                        icon:
                                            Icon(Icons.check_box_outline_blank))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('order cancel'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(data!.orderstatus.toString()),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          db
                                              .collection('addNewOrder')
                                              .doc(widget.indexdata.id)
                                              .update({
                                            'orderstatus': 'order cancel'
                                          });
                                        },
                                        icon:
                                            Icon(Icons.check_box_outline_blank))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('Complete order'),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(data!.orderstatus.toString()),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {
                                          db
                                              .collection('addNewOrder')
                                              .doc(widget.indexdata.id)
                                              .update(
                                                  {'orderstatus': 'Complete'});
                                        },
                                        icon:
                                            Icon(Icons.check_box_outline_blank))
                                  ],
                                ),
                              ],
                            );
                          }

                          //   return Column(
                          //     children: [
                          //       ListView.separated(
                          //         itemCount: orderstaus.length,
                          //         shrinkWrap: true,
                          //         itemBuilder: (context, index) {
                          //           return Row(
                          //             children: [
                          //               Text(orderstaus[index]),
                          //               Spacer(),
                          //               Container(
                          //                 width: Helper.H(context) * .020,
                          //                 height: Helper.H(context) * .020,
                          //                 child: Icon(
                          //                   widget.indexdata.orderstatus ==
                          //                           'orderconformed'
                          //                       ? Icons.check_box
                          //                       : Icons
                          //                           .check_box_outline_blank_rounded,
                          //                   color: widget.indexdata.orderstatus ==
                          //                           'orderconformed'
                          //                       ? Colors.blue
                          //                       : Colors.red,
                          //                 ),
                          //               ),
                          //             ],
                          //           );
                          //         },
                          //         separatorBuilder: (context, index) {
                          //           return SizedBox(
                          //             height: Helper.H(context) * .050,
                          //           );
                          //         },
                          //       ),
                          //       SizedBox(
                          //         height: Helper.H(context) * .050,
                          //       ),
                          //     ],
                          //   );
                          // },
                          );
                    },
                  ),
                  // Text(widget.indexdata.orderstatus)
                ],
              ),
            )
          ],
        ),
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
                builder: (context) => BottomnavDelivery(selectedindex: index),
              ),
            );
          }
        },
      ),
    );
  }
}

class MyCheckboxListTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const MyCheckboxListTile({
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(title),
      value: value,
      onChanged: onChanged,
    );
  }
}
