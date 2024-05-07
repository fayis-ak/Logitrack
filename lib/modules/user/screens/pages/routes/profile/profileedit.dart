import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logitrack/modules/user/screens/pages/bottom_bar.dart';
import 'package:logitrack/utils/responsivesize.dart';
import 'package:logitrack/widgets/bordernonetextform.dart';
import 'package:logitrack/widgets/container.dart';

class ProfileEditScreen extends StatelessWidget {
  ProfileEditScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _adressController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: ResponsiveHelper.getHeight(context) * .00,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: ResponsiveHelper.getWidth(context) * .090,
                          backgroundImage:
                              AssetImage('assets/images/circleprofile.png'),
                        ),
                      ],
                    ),
                  ),
                  Text('Clara'),
                ],
              ),
              SizedBox(
                height: ResponsiveHelper.getHeight(context) * .060,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ResponsiveHelper.getWidth(context) * .050,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name'),
                    BorderNoneetextformwidget(
                      controller: _nameController,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .030,
                    ),
                    Text('Email'),
                    BorderNoneetextformwidget(
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .030,
                    ),
                    Text('Adress'),
                    BorderNoneetextformwidget(
                      controller: _adressController,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .030,
                    ),
                    Text('Number'),
                    BorderNoneetextformwidget(
                      controller: _nameController,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .030,
                    ),
                    Text('Password'),
                    BorderNoneetextformwidget(
                      controller: _passwordController,
                    ),
                    SizedBox(
                      height: ResponsiveHelper.getHeight(context) * .030,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          child: ContainerWidget(
                            width: ResponsiveHelper.getWidth(context) * .700,
                            height: ResponsiveHelper.getHeight(context) * .060,
                            text: 'Conform',
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
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: mynav(
        index: 3,
        onTap: (index) {
          if (index == 0 || index == 1 || index == 2 || index == 3) {
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
