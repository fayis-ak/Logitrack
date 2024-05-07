import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 

import '../../../../utils/responsivesize.dart';

class Containerwidget extends StatelessWidget {
  const Containerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: ResponsiveHelper.getWidth(context) * .050,
      height: ResponsiveHelper.getHeight(context) * .030,
      decoration: BoxDecoration(
          color: Color(0xFF084077),
          borderRadius:
              BorderRadius.circular(ResponsiveHelper.getWidth(context) * .020)),
      child: Text(
        'Remove',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
