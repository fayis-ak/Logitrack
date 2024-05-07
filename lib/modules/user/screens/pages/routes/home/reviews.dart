import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/utils/responsivesize.dart';

class ReviesScreen extends StatelessWidget {
  const ReviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: ResponsiveHelper.getWidth(context) * .040,
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: ResponsiveHelper.getWidth(context) * .060,
                          backgroundImage:
                              AssetImage('assets/images/circleprofile.png'),
                        ),
                        SizedBox(
                          width: ResponsiveHelper.getWidth(context) * .020,
                        ),
                        Container(
                          width: ResponsiveHelper.getWidth(context) * .750,
                          height: ResponsiveHelper.getHeight(context) * .090,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(
                              ResponsiveHelper.getWidth(context) * .040,
                            ),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 9,
                              ),
                              Flexible(
                                child: Text(
                                  'The delivery was on time and iam satisfied with this longtrack',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .050,
                  );
                },
                itemCount: 10),
          )
        ],
      ),
      bottomNavigationBar: mynav(
        index: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavUser(selectedindex: 0),
                ));
          } else if (index == 1) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavUser(selectedindex: 1),
                ));
          } else if (index == 2) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavUser(selectedindex: 2),
                ));
          } else if (index == 3) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavUser(selectedindex: 3),
                ));
          } else if (index == 4) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BottomnavUser(selectedindex: 3),
                ));
          }
        },
      ),
    );
  }
}
