import 'package:flutter/material.dart';
import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';

import 'package:logitrack/modules/deliveryboy/widgets/container.dart';
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/responsivesize.dart';

class ShipmentDetails extends StatefulWidget {
  const ShipmentDetails({super.key});

  @override
  State<ShipmentDetails> createState() => _ShipmentDetailsState();
}

class _ShipmentDetailsState extends State<ShipmentDetails> {
  bool _isSelected = false;
  bool _isSelected2 = false;

  bool _isSelected3 = false;

  bool _isSelected4 = false;

  bool _isSelected5 = false;

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
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Column(
                children: [
                  Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .050,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: ResponsiveHelper.getHeight(context) * .250,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(
                          ResponsiveHelper.getWidth(context) * .050,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: ResponsiveHelper.getWidth(context) * .030,
                                left: ResponsiveHelper.getWidth(context) * .030,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Clara',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .050,
                                    ),
                                  ),
                                  Text(
                                    '12march 2024 on 3:00pm ',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .030,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    'Pickup From',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .050,
                                    ),
                                  ),
                                  Text(
                                    '54 w Nob Hill Blvd city/\n Town yakima State/\nPostal code98902',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .030,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                              width: ResponsiveHelper.getWidth(context) * .030),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: ResponsiveHelper.getWidth(context) * .030,
                                left: ResponsiveHelper.getWidth(context) * .030,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ContainerWidget(
                                    color: ColorsClass.greenColor,
                                    width: ResponsiveHelper.getWidth(context) *
                                        .250,
                                    height:
                                        ResponsiveHelper.getHeight(context) *
                                            .030,
                                    text: 'Accept',
                                    radius: ResponsiveHelper.getWidth(context) *
                                        .030,
                                  ),
                                  SizedBox(
                                    height:
                                        ResponsiveHelper.getHeight(context) *
                                            .030,
                                  ),
                                  Text(
                                    'Delivery to',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .050,
                                    ),
                                  ),
                                  Text(
                                    '54 w Nob Hill Blvd city/\n Town yakima State/\nPostal code98902',
                                    style: AppTextStyles.regularText(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .030,
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
                    height: ResponsiveHelper.getHeight(context) * .030,
                  ),
                  MyCheckboxListTile(
                    onChanged: (value) {
                      setState(() {
                        _isSelected = value!;
                      });
                    },
                    title: 'Shipment Created',
                    value: _isSelected,
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  MyCheckboxListTile(
                    onChanged: (value) {
                      setState(() {
                        _isSelected2 = value!;
                      });
                    },
                    title: 'Vehicle Assigned',
                    value: _isSelected2,
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  MyCheckboxListTile(
                    onChanged: (value) {
                      setState(() {
                        _isSelected3 = value!;
                      });
                    },
                    title: 'Shipment Picked',
                    value: _isSelected3,
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  MyCheckboxListTile(
                    onChanged: (value) {
                      setState(() {
                        _isSelected4 = value!;
                      });
                    },
                    title: 'In Transit',
                    value: _isSelected4,
                  ),
                  SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .020,
                  ),
                  MyCheckboxListTile(
                    onChanged: (value) {
                      setState(() {
                        _isSelected5 = value!;
                      });
                    },
                    title: 'Shipment Delivered',
                    value: _isSelected5,
                  ),
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
