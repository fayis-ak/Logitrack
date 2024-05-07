import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/company/screens/pages/routes/home/pending.dart';
import 'package:logitrack/modules/company/screens/pages/routes/home/track.dart';
import 'package:logitrack/modules/company/utils/clippath.dart';

import 'package:logitrack/modules/company/utils/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/company/widgets/text_style.dart';

import '../../../../utils/responsivesize.dart';

class HomepageCompany extends StatefulWidget {
  const HomepageCompany({super.key});

  @override
  State<HomepageCompany> createState() => _HomepageCompanyState();
}

class _HomepageCompanyState extends State<HomepageCompany> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: ClipPath(
                      clipper: WaveClipper(),
                      child: Container(
                        height: ResponsiveHelper.getHeight(context) * .350,
                        color: Colors.blue.shade100,
                      ),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      height: ResponsiveHelper.getHeight(context) * .320,
                      color: ColorsClass.blueshade,
                    ),
                  ),
                  Positioned(
                      top: ResponsiveHelper.getWidth(context) * .200,
                      left: ResponsiveHelper.getWidth(context) * .050,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.goNamed('profile');
                                },
                                child: CircleAvatar(
                                  radius:
                                      ResponsiveHelper.getWidth(context) * .080,
                                  backgroundImage: AssetImage(
                                    'assets/images/courier/fedex.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width:
                                    ResponsiveHelper.getWidth(context) * .020,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Fedex',
                                    style: AppTextStyles.regularText(
                                        color: Colors.white),
                                  ),
                                  Text(
                                    'Company',
                                    style: AppTextStyles.regularText(
                                        color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                  Positioned(
                    top: ResponsiveHelper.getWidth(context) * .200,
                    right: ResponsiveHelper.getWidth(context) * .150,
                    child: InkWell(
                      onTap: () {
                        context.goNamed('notification');
                      },
                      child: Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: ResponsiveHelper.getWidth(context) * .070,
                ),
                Text('Ongoing'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .020,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: ResponsiveHelper.getHeight(context) * .280,
                      // color: Colors.grey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: ResponsiveHelper.getHeight(context) * .020,
                          ),
                          Container(
                            width: ResponsiveHelper.getWidth(context) * .750,
                            height: ResponsiveHelper.getHeight(context) * .200,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade50,
                              borderRadius: BorderRadius.circular(
                                ResponsiveHelper.getWidth(context) * .030,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    ResponsiveHelper.getWidth(context) * .020,
                                horizontal:
                                    ResponsiveHelper.getWidth(context) * .030,
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
                                            text: 'Clara',
                                            style: AppTextStyles.boldText(
                                              fontSize:
                                                  ResponsiveHelper.getWidth(
                                                          context) *
                                                      .050,
                                            ),
                                          ),
                                          TextWidget(
                                            text: '12 march 2024 on 3:00 pm',
                                            style: TextStyle(
                                              fontSize:
                                                  ResponsiveHelper.getWidth(
                                                          context) *
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
                                                  ResponsiveHelper.getWidth(
                                                          context) *
                                                      .025,
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
                            height: ResponsiveHelper.getWidth(context) * .020,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width:
                                    ResponsiveHelper.getWidth(context) * .620,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Tracking(),
                                      ));
                                },
                                child: Container(
                                  width:
                                      ResponsiveHelper.getWidth(context) * .200,
                                  height: ResponsiveHelper.getHeight(context) *
                                      .030,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      ResponsiveHelper.getWidth(context) * .010,
                                    ),
                                    border: Border.all(),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'On the way',
                                        style: AppTextStyles.regularText(
                                          fontSize: ResponsiveHelper.getWidth(
                                                  context) *
                                              .030,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                  );
                },
                itemCount: 1,
              ),
            ),

            // second
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: ResponsiveHelper.getWidth(context) * .070,
                ),
                Text('Pending'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveHelper.getWidth(context) * .050),
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PendingScreen(),
                          ));
                    },
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
                                  children: [
                                    Text(
                                      'Pending',
                                      style: AppTextStyles.regularText(
                                        color: ColorsClass.redcolor,
                                      ),
                                    ),
                                    Text(
                                      ' Request has been\n accepted',
                                      style: AppTextStyles.regularText(
                                        color: Colors.grey,
                                        fontSize:
                                            ResponsiveHelper.getWidth(context) *
                                                .020,
                                      ),
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
                    height: 50,
                  );
                },
                itemCount: 5,
              ),
            ),
            SizedBox(
              height: ResponsiveHelper.getHeight(context) * .060,
            )
          ],
        ),
      ),
    );
  }
}
