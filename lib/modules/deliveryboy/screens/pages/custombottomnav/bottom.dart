import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
 
import '../../../../../utils/colors.dart';
 
 
class BottomNav extends StatefulWidget {
  BottomNav({Key? key, required this.navigationShell}) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int index = 0;

  void _goBranch(int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          height: 60,
          indicatorColor: ColorsClass.SplashScreenbg,
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (indexm) {
            setState(() => index = indexm);
            _goBranch(indexm);
          },
          destinations: [
            NavigationDestination(
              icon: Image.asset(
                'assets/images/Home.png',
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/order.png'),
              label: 'Order',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/Alarm.png'),
              label: 'Track',
            ),
            NavigationDestination(
              icon: Image.asset('assets/images/profile.png'),
              label: 'Profile',
            ),
          ],
        ),
      ),
      // body: _pages[index],
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: widget.navigationShell,
      ),
    );
  }
}
