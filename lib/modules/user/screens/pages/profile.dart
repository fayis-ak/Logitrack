import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/user/screens/pages/routes/profile/language.dart';
import 'package:logitrack/modules/user/screens/pages/routes/profile/notification.dart';
import 'package:logitrack/modules/user/screens/pages/routes/profile/payment.dart';
import 'package:logitrack/modules/user/screens/pages/routes/profile/profileedit.dart';

import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/utils/responsivesize.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    void alertboxopen(BuildContext context) async {
      return showDialog(
        builder: (context) => AlertDialog(
          content: Text('Are you sure logout'),
          title: Text('Logout'),
          actions: [
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Text('YES'),
            ),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: Text('NO'),
            ),
          ],
        ),
        context: context,
      );
    }

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
                      radius: ResponsiveHelper.getWidth(context) * .090,
                      backgroundImage:
                          AssetImage('assets/images/circleprofile.png'),
                    ),
                  ],
                ),
              ),
              Text('Clara'),
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
                        ));
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
                        ));
                  },
                  leading: Icon(Icons.notifications_active),
                  title: Text('notification'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Payment(),
                        ));
                  },
                  leading: Icon(Icons.payment_outlined),
                  title: Text('Payment'),
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Security'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Language(),
                      ),
                    );
                  },
                  leading: Icon(Icons.language),
                  title: Text('Language'),
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
                  onTap: () {
                    alertboxopen(context);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
