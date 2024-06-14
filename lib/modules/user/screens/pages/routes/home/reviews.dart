import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/company/widgets/textformwidget.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/services/firebase_controller.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:provider/provider.dart';

class ReviesScreen extends StatelessWidget {
  const ReviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final feedback = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: Helper.W(context) * .020,
            ),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  enableDrag: true,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(
                          Helper.W(context) * .005,
                        ),
                      ),
                      // height: Helper.H(context) / 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('ADD YOUR REVIEW'),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: TextFormField(
                                  controller: feedback,
                                  decoration: InputDecoration(
                                    hintText: 'Feedback',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: Helper.H(context) * .030,
                              ),
                              Consumer<FirebaseController>(
                                builder: (context, helper, child) {
                                  return FutureBuilder(
                                    future: helper.fetchtracking(),
                                    builder: (context, snapshot) {
                                      final data = snapshot.data;
                                      log(data.toString());
                                      return TextFormField(
                                        controller: feedback,
                                        decoration: InputDecoration(
                                          hintText: 'Profuctid ',
                                          border: OutlineInputBorder(),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                alignment: Alignment.center,
                // width: Helper.W(context) * .40,
                height: Helper.H(context) * .050,
                child: Material(
                  color: Colors.grey,
                  elevation: 4,
                  child: Row(
                    children: [
                      Text('Add review'),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: Helper.H(context) * .020,
          ),
          Expanded(child: Consumer(
            builder: (context, value, child) {
              return StreamBuilder(
                stream: null,
                builder: (context, snapshot) {
                  return ListView.separated(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Helper.W(context) * .040,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: Helper.W(context) * .060,
                              backgroundImage:
                                  AssetImage('assets/images/circleprofile.png'),
                            ),
                            SizedBox(
                              width: Helper.W(context) * .020,
                            ),
                            Container(
                              width: Helper.W(context) * .750,
                              height: Helper.H(context) * .090,
                              decoration: BoxDecoration(
                                color: Colors.pink.shade50,
                                borderRadius: BorderRadius.circular(
                                  Helper.W(context) * .040,
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
                        height: Helper.H(context) * .050,
                      );
                    },
                  );
                },
              );
            },
          ))
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
