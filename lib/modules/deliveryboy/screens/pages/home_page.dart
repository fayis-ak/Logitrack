import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/order.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/home/cenceled.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/home/completed.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/home/pending.dart';
 
import 'package:logitrack/modules/deliveryboy/widgets/container.dart';
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';
import 'package:logitrack/modules/deliveryboy/widgets/textformwidget.dart';
import 'package:logitrack/utils/responsivesize.dart';

import '../../../../utils/colors.dart';

class HomepageDelivery extends StatefulWidget {
  const HomepageDelivery({super.key});

  @override
  State<HomepageDelivery> createState() => _HomepageDeliveryState();
}

class _HomepageDeliveryState extends State<HomepageDelivery> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .080,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              // vertical: ResponsiveHelper.getWidth(context) * .180,
              horizontal: ResponsiveHelper.getWidth(context) * .110,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: ResponsiveHelper.getWidth(context) * .080,
                      backgroundImage: AssetImage('assets/images/userimg.png'),
                    ),
                    SizedBox(
                      width: ResponsiveHelper.getWidth(context) * .050,
                    ),
                    Column(
                      children: [
                        Text('Hi'),
                        Text('Clara'),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Textformwidget(
                  hint: 'Enter Tracking id number',
                  radius: ResponsiveHelper.getWidth(context) * .020,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .020,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                //first row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Mainscreencontainer(
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Orderbottomdelivery(),
                            ));
                      },
                      width: ResponsiveHelper.getWidth(context) * .280,
                      height: ResponsiveHelper.getHeight(context) * .110,
                      image: 'assets/images/newordercont.png',
                    ),
                    Mainscreencontainer(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PendingScreenDelivery(),
                          ),
                        );
                      },
                      width: ResponsiveHelper.getWidth(context) * .280,
                      height: ResponsiveHelper.getHeight(context) * .110,
                      image: 'assets/imagesdelivery/Clock.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('OrderRequest'),
                    Text('Pending'),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),

                //second row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Mainscreencontainer(
                      ontap: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Completed(),
                          ),
                        );
                      },
                      width: ResponsiveHelper.getWidth(context) * .280,
                      height: ResponsiveHelper.getHeight(context) * .110,
                      image: 'assets/imagesdelivery/Check All.png',
                    ),
                    Mainscreencontainer(
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Canceled(),
                          ),
                        );
                      },
                      width: ResponsiveHelper.getWidth(context) * .280,
                      height: ResponsiveHelper.getHeight(context) * .110,
                      image: 'assets/imagesdelivery/Unavailable.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Completed'),
                    Text('Canceled'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .050,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .040,
            ),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 2,
              physics: BouncingScrollPhysics(),
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
                                          ResponsiveHelper.getWidth(context) *
                                              .050,
                                    ),
                                  ),
                                  TextWidget(
                                    text: '12 march 2024 on 3:00 pm',
                                    style: TextStyle(
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .030,
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
                                          ResponsiveHelper.getWidth(context) *
                                              .025,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                ],
                              ),
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
            ),
          )
        ],
      ),
    );
  }
}

class Mainscreencontainer extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final VoidCallback ontap;
  const Mainscreencontainer({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getWidth(context) * .030,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .020,
            ),
            Image.asset(image),
          ],
        ),
      ),
    );
  }
}
