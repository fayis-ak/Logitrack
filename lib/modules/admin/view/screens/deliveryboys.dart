import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/admin/widgets/container.dart';
import 'package:logitrack/utils/colors.dart';

import '../../../../utils/responsivesize.dart';

Widget DeliveryBoys(context) {
  return SingleChildScrollView(
      child: Padding(
    padding: EdgeInsets.symmetric(
      horizontal: Helper.W(context) * .030,
      vertical: Helper.H(context) * .020,
    ),
    child: Column(children: [
      Container(
        width: double.infinity,
        height: Helper.H(context) * .950,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Helper.W(context) * .030,
          ),
          color:ColorsClass.blueshade,
        ),
        child: Column(
          children: [
            SizedBox(
              height: Helper.H(context) * .050,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Helper.W(context) * .300,
                  height: Helper.H(context) * .850,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Helper.W(context) * .030,
                    ),
                    // color: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(),
                            title: Text('data'),
                            subtitle: Text('fayissubsittl'),
                            trailing: Containerwidget(),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: Helper.H(context) * .030,
                          );
                        },
                        itemCount: 30),
                  ),
                ),
                Container(
                  width: Helper.W(context) * .300,
                  height: Helper.H(context) * .850,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Helper.W(context) * .030,
                    ),
                    // color: Colors.red,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                              leading: CircleAvatar(),
                              title: Text('data'),
                              subtitle: Text('fayissubsittl'),
                              trailing: Containerwidget());
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: Helper.H(context) * .030,
                          );
                        },
                        itemCount: 30),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ]),
  ));
}
