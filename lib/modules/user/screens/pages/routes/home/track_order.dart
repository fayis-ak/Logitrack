import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/utils/responsivesize.dart';

class TrackOrderScreen extends StatefulWidget {
  TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  bool? _loading;

  double? _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 20;
  }

  List<String> state = [
    'chennai',
    'bangalore',
    'chennai',
    'bangalore',
    'chennai',
    'bangalore',
    'chennai',
    'bangalore',
    'chennai',
    'bangalore',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tracking'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .050,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Order id'),
                                  Text(
                                    '#2919567',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('12 march 2024'),
                                  Text(state[index]),
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
                                new AlwaysStoppedAnimation<Color>(Colors.blue),
                            value: _progressValue,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: ResponsiveHelper.getHeight(context) * .040,
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
        // bottomNavigationBar: mynav(
        //   index: 0,
        //   onTap: (index) {
        //     if (index == 0) {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Bottomnav(selectedindex: 0),
        //           ));
        //     } else if (index == 1) {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Bottomnav(selectedindex: 1),
        //           ));
        //     } else if (index == 2) {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Bottomnav(selectedindex: 2),
        //           ));
        //     } else if (index == 3) {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Bottomnav(selectedindex: 3),
        //           ));
        //     } else if (index == 4) {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Bottomnav(selectedindex: 3),
        //           ));
        //     }
        //   },
        // ),
    );
  }
}
