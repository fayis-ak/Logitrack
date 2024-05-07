import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logitrack/utils/colors.dart';
import 'package:logitrack/utils/responsivesize.dart';

class ContainerWidget extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final String text;
  final double? textsize;
  const ContainerWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.radius,
      this.textsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: ColorsClass.SplashScreenbg,
          borderRadius: BorderRadius.circular(radius)),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.heebo(
            fontSize: ResponsiveHelper.getWidth(context) * .060,
            color: ColorsClass.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
