import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

 
import 'package:logitrack/modules/deliveryboy/widgets/text_style.dart';
import 'package:logitrack/modules/deliveryboy/widgets/textformwidget.dart';
import 'package:logitrack/utils/responsivesize.dart';
 
class NotificationScreenDelivery extends StatelessWidget {
  const NotificationScreenDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> notification = [
      'New ordr has been placed',
      'Order cancelled',
      '5 bonus points for fast delivery',
      'You earned 5% cashback',
      'You order has been conformed',
      'Your order has been conformed'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('notification'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.getWidth(context) * .050,
              ),
              child: Container(
                width: double.infinity,
                height: ResponsiveHelper.getHeight(context) * .150,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getWidth(context) * .030,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      notification[index],
                      style: AppTextStyles.regularText(
                        fontSize: ResponsiveHelper.getWidth(context) * .050,
                        
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: ResponsiveHelper.getHeight(context) * .050,
            );
          },
          itemCount: notification.length),
    );
  }
}
