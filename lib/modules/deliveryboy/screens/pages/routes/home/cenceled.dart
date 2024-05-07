import 'package:flutter/material.dart';
import 'package:logitrack/modules/deliveryboy/screens/bottom_navbar.dart';

import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';

import '../../../../../../utils/colors.dart';
import '../../../../../../utils/responsivesize.dart';

class Canceled extends StatelessWidget {
  const Canceled({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cenceled'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .050,
        ),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: ResponsiveHelper.getHeight(context) * .200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getWidth(context) * .030,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: ResponsiveHelper.getWidth(context) * .020,
                    horizontal: ResponsiveHelper.getWidth(context) * .030,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: 'Clara',
                                style: AppTextStyles.boldText(
                                  fontSize:
                                      ResponsiveHelper.getWidth(context) * .050,
                                ),
                              ),
                              TextWidget(
                                text: '12 march 2024 on 3:00 pm',
                                style: TextStyle(
                                  fontSize:
                                      ResponsiveHelper.getWidth(context) * .030,
                                  color: Colors.grey,
                                ),
                              ),
                              TextWidget(
                                text: 'Address',
                                style: AppTextStyles.regularText(),
                              ),
                              TextWidget(
                                text:
                                    '54 W Nob Hill Blvd City/Town Yakima State/\n Postal Code98902',
                                style: AppTextStyles.regularText(
                                  fontSize:
                                      ResponsiveHelper.getWidth(context) * .025,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Cancelled',
                                style: AppTextStyles.regularText(
                                  color: ColorsClass.redcolor,
                                ),
                              ),
                              Image.asset(
                                'assets/imagesdelivery/canceled.png',
                                errorBuilder: (context, error, stackTrace) =>
                                    Icon(Icons.error),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: ResponsiveHelper.getHeight(context) * .030,
            );
          },
          itemCount: 2,
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