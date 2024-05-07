import 'package:flutter/material.dart';
import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/utils/responsivesize.dart';

class Textformwidget extends StatelessWidget {
  final String hint;
  final double radius;
  const Textformwidget({super.key, required this.hint, required this.radius});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(
          ResponsiveHelper.getWidth(context) * .010,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(ResponsiveHelper.getWidth(context) * .020),
          borderSide: BorderSide(
            color: ColorsClass.SplashScreenbg,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(ResponsiveHelper.getWidth(context) * .020),
          borderSide: BorderSide(
            color: ColorsClass.SplashScreenbg,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
