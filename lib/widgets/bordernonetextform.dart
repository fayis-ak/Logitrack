import 'package:flutter/material.dart';
import 'package:logitrack/utils/responsivesize.dart';

class BorderNoneetextformwidget extends StatelessWidget {
  final TextEditingController controller;

  const BorderNoneetextformwidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.blue.shade50,
        filled: true,
        contentPadding:
            EdgeInsets.all(ResponsiveHelper.getWidth(context) * .010),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
