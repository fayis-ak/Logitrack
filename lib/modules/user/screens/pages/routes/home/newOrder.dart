import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/container.dart';

class NewOrderScreen extends StatelessWidget {
  const NewOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Order'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveHelper.getWidth(context) * .030,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //

              Text('Pickup Form'),
              NewOrderTextformwidget(
                hint: 'Enter name',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              NewOrderTextformwidget(
                hint: 'Number',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              NewOrderTextformwidget(
                hint: 'Address',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .010,
              ),
              Text('Delivery TO'),
              NewOrderTextformwidget(
                hint: 'Enter name',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              NewOrderTextformwidget(
                hint: 'Number',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              NewOrderTextformwidget(
                hint: 'Address',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .010,
              ),
              //

              //
              Text('Product Details'),
              NewOrderTextformwidget(
                hint: 'Product Type',
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .020,
              ),
              Text('Weight'),
              NewOrderTextformwidget(),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.goNamed('Courierservices');
                    },
                    child: ContainerWidget(
                      width: ResponsiveHelper.getWidth(context) * .700,
                      height: ResponsiveHelper.getHeight(context) * .060,
                      text: 'NEXT',
                      radius: ResponsiveHelper.getWidth(context) * .050,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .030,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: mynav(
        index: 0,
        onTap: (index) {
          if (index == 0 ||
              index == 1 ||
              index == 2 ||
              index == 3 ||
              index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomnavUser(selectedindex: index),
              ),
            );
          }
        },
      ),
    );
  }
}

class NewOrderTextformwidget extends StatelessWidget {
  final String? hint;

  const NewOrderTextformwidget({
    super.key,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: ResponsiveHelper.getHeight(context) * .070,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ResponsiveHelper.getWidth(context) * .020,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2,
              offset: Offset(0, 4),
            ),
          ]),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.blue.shade50,
          filled: true,
          contentPadding:
              EdgeInsets.all(ResponsiveHelper.getWidth(context) * .010),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
