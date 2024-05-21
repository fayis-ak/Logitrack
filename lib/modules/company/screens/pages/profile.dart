 
import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/responsivesize.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  List<String> deliveryboys = [
    'assets/images/delivery_boys/1.png',
    'assets/images/delivery_boys/2.png',
    'assets/images/delivery_boys/3.png',
    'assets/images/delivery_boys/4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Delivery Boys'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(deliveryboys[index]),
                    ),
                    title: Text('Manu'),
                    subtitle: Text(
                      'Dd',
                      style: TextStyle(color: Colors.grey,),
                    ),
                    trailing: Container(
                      width: Helper.W(context) * .150,
                      height: Helper.H(context) * .030,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                              Helper.W(context) * .020)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Remove',
                            style: TextStyle(color: ColorsClass.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: Helper.W(context) * .020,
                  );
                },
                itemCount: deliveryboys.length,
              )
            ],
          ),
        ));
  }
}
