import 'package:flutter/material.dart';
import 'package:logitrack/modules/admin/view/dashboard_home/dashboard_home.dart';
import 'package:logitrack/modules/user/screens/splash_screen/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior:
          const MaterialScrollBehavior().copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BottomnavCompany(
      //   selectedindex: 0,
      // )

      // delivery
      // home: LogginScreenDelivery()

      // logitrack user
      home: SplashScreenUser(),

      //admin
      // home: DashboardHome(),
    );
  }
}
