import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logitrack/utils/responsivesize.dart';

class CourierServices extends StatelessWidget {
  CourierServices({super.key});

  List<String> coriername = [
    'FedEx',
    'GATI',
    'DHL',
    'Blue Dart',
    'Shipway',
    'DTDC'
  ];

  List<String> imagecorier = [
    'assets/images/courier/fedex.png',
    'assets/images/courier/gati.png',
    'assets/images/courier/djl.png',
    'assets/images/courier/bluedat.png',
    'assets/images/courier/shipaway.png',
    'assets/images/courier/dtdc.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courier Services'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              );
            },
            itemCount: coriername.length,
            itemBuilder: (context, index) {
              return
               Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveHelper.getWidth(context) * .040,
                ),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(
                    ResponsiveHelper.getWidth(context) * .030,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: ResponsiveHelper.getHeight(context) * .150,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 90,
                                height: 70,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imagecorier[index]))),
                              ),
                              SizedBox(
                                width:
                                    ResponsiveHelper.getWidth(context) * .030,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    coriername[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          ResponsiveHelper.getWidth(context) *
                                              .050,
                                    ),
                                  ),
                                  Text('Estimated'),
                                  Text('Shipping Charge'),
                                ],
                              ),
                              Spacer(), // Add spacer to push the next widget to the end
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      Text('4.0'),
                                    ],
                                  ),
                                  Text('1 March'),
                                  Text('\$300'),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
