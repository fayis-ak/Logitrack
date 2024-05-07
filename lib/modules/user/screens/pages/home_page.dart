import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/user/screens/pages/routes/home/newOrder.dart';
import 'package:logitrack/modules/user/screens/pages/routes/home/reviews.dart';
import 'package:logitrack/modules/user/screens/pages/routes/home/track_order.dart';
import 'package:logitrack/router/app_router.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/textformwidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool? _loading;
  double? _progressValue;
  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 20;
  }

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
                Container(
                  width: double.infinity,
                  height: ResponsiveHelper.getHeight(context) * .300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      ResponsiveHelper.getWidth(context) * .030,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/containerimg.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .050,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .030,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewOrderScreen(),
                            ));
                      },
                      child: MainscreenContainer(
                        image: 'assets/images/newordercont.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TrackOrderScreen(),
                            ));
                      },
                      child: MainscreenContainer(
                        image: 'assets/images/trackorder.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReviesScreen(),
                            ));
                      },
                      child: MainscreenContainer(
                        image: 'assets/images/reviews.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('New Order'),
                    Text('Track Order'),
                    Text('Reviews'),
                  ],
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .050,
                ),
                Text('Recent Delivery'),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackOrderScreen(),
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('Order id'),
                                  Text('#2919567'),
                                  Text('12 march 2024'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text('cont'),
                                  SizedBox(
                                    height:
                                        ResponsiveHelper.getHeight(context) *
                                            .020,
                                  ),
                                  Text('16 march 2024'),
                                  Text('Karnataka'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LinearProgressIndicator(
                            backgroundColor: Colors.cyanAccent,
                            valueColor:
                                new AlwaysStoppedAnimation<Color>(Colors.red),
                            value: _progressValue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ResponsiveHelper.getHeight(context) * .030,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MainscreenContainer extends StatelessWidget {
  final String image;
  const MainscreenContainer({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveHelper.getWidth(context) * .280,
      height: ResponsiveHelper.getHeight(context) * .110,
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
    );
  }
}
