import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/profile/notification.dart';
import 'package:logitrack/modules/deliveryboy/screens/pages/routes/profile/profileedit.dart';
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';

import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/textwidget.dart';

class Profiledelivery extends StatelessWidget {
  const Profiledelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: ResponsiveHelper.getHeight(context) * .080,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: ResponsiveHelper.getWidth(context) * .100,
                      backgroundImage:
                          AssetImage('assets/imagesdelivery/deliveryboy.png'),
                    ),
                  ],
                ),
              ),
              Text(
                'Manu',
                style: AppTextStyles.regularText(
                  fontSize: ResponsiveHelper.getWidth(context) * .050,
                ),
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveHelper.getHeight(context) * .060,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ResponsiveHelper.getWidth(context) * .050,
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileEditScreen(),
                      ),
                    );
                  },
                  leading: Icon(Icons.person),
                  title: Text('Edit profile'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text('Adress'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NotificationScreen(),
                      ),
                    );
                  },
                  leading: Icon(Icons.notifications_active),
                  title: Text('notification'),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help Center'),
                ),
                ListTile(
                  iconColor: Colors.red,
                  textColor: Colors.red,
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
