import 'package:flutter/material.dart';
import 'package:logitrack/modules/user/screens/pages/home_page.dart';
import 'package:logitrack/modules/user/screens/pages/order.dart';
import 'package:logitrack/modules/user/screens/pages/profile.dart';
import 'package:logitrack/modules/user/screens/pages/routes/home/track_order.dart';

class BottomnavUser extends StatefulWidget {
  int selectedindex = 0;
  BottomnavUser({super.key, required this.selectedindex});

  @override
  State<BottomnavUser> createState() => _BottomnavUserState();
}

class _BottomnavUserState extends State<BottomnavUser> {
  @override
  Widget build(BuildContext context) {
    final _pages = [
      Homepage(),
      TrackOrderScreen(),
      Orderbottom(),
      Profile(),
    ];

    return Scaffold(
      body: _pages[widget.selectedindex],
      bottomNavigationBar: mynav(
        index: widget.selectedindex,
        onTap: (index) {
          setState(() {
            widget.selectedindex = index;
          });
        },
      ),
    ); 
  }
}

Widget mynav({int? index, void Function(int)? onTap,  }) {
  return NavigationBar(
    selectedIndex: index!,
    onDestinationSelected: onTap,
    
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
        icon: Image.asset('assets/images/Truck.png'),
        label: 'Track',
      ),
      NavigationDestination(
        icon: Image.asset('assets/images/profile.png'),
        label: 'Profile',
      ),
    ],
  );
}
