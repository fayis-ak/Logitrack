 




// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import 'package:logitrack/user/screens/pages/custombottomnav/bottom.dart';
// import 'package:logitrack/user/screens/pages/home_page.dart';
// import 'package:logitrack/user/screens/pages/order.dart';
// import 'package:logitrack/user/screens/pages/profile.dart';
// import 'package:logitrack/user/screens/pages/routes/home/courier_services.dart';
// import 'package:logitrack/user/screens/pages/routes/home/newOrder.dart';
// import 'package:logitrack/user/screens/pages/routes/profile/language.dart';
// import 'package:logitrack/user/screens/pages/routes/profile/notification.dart';

// import 'package:logitrack/user/screens/pages/routes/profile/payment.dart';
// import 'package:logitrack/user/screens/pages/routes/profile/profileedit.dart';
// import 'package:logitrack/user/screens/pages/routes/home/reviews.dart';
// import 'package:logitrack/user/screens/pages/routes/home/track_order.dart';

// class AppNavigation {
//   AppNavigation._();

//   static String initR = '/home';

  
//   static final _rootNavigateKey = GlobalKey<NavigatorState>();
//   static final _rootNavigateHome =
//       GlobalKey<NavigatorState>(debugLabel: 'shellHome');

//   static final _rootNavigateorder =
//       GlobalKey<NavigatorState>(debugLabel: 'shellsetting');

//   static final _rootNavigatetrack =
//       GlobalKey<NavigatorState>(debugLabel: 'shelltrack');

//   static final _rootNavigateprofile =
//       GlobalKey<NavigatorState>(debugLabel: 'shellprofile');

//   static final GoRouter router = GoRouter(
//     initialLocation: initR,
//     navigatorKey: _rootNavigateKey,
//     debugLogDiagnostics: true,
//     routes: <RouteBase>[
//       // splash
      

// // 
//       StatefulShellRoute.indexedStack(
//         builder: (context, state, navigationShell) {
//           return BottomNav(
//             navigationShell: navigationShell,
//           );
//         },
//         branches: <StatefulShellBranch>[
          
//           StatefulShellBranch(
//             navigatorKey: _rootNavigateHome,
//             routes: [
//               GoRoute(
//                 path: '/home',
//                 name: 'Home',
//                 builder: (context, state) {
//                   return Homepage(
//                     key: state.pageKey,
//                   );
//                 },
//                 routes: [
//                   GoRoute(
//                     path: 'subHome',
//                     name: 'subHome',
//                     builder: (context, state) {
//                       return NewOrderScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'TrackOrderScreen',
//                     name: 'TrackOrderScreen',
//                     builder: (context, state) {
//                       return TrackOrderScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'Reviews',
//                     name: 'Reviews',
//                     builder: (context, state) {
//                       return ReviesScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'Courierservices',
//                     name: 'Courierservices',
//                     builder: (context, state) {
//                       return CourierServices(
//                         key: state.pageKey,
//                       );
//                     },
//                   )
//                 ],
//               ),
//             ],
         
//           ),

//           //

//           StatefulShellBranch(
//             navigatorKey: _rootNavigateorder,
//             routes: [
//               GoRoute(
//                 path: '/order',
//                 name: 'Order',
//                 builder: (context, state) {
//                   return TrackOrderScreen(
//                     key: state.pageKey,
//                   );
//                 },
//               ),
//             ],
//           ),

//           // bottom
//           StatefulShellBranch(
//             navigatorKey: _rootNavigatetrack,
//             routes: [
//               GoRoute(
//                 path: '/Track',
//                 name: 'Track',
//                 builder: (context, state) {
//                   return Orderbottom(
//                     key: state.pageKey,
//                   );
//                 },
//               ),
//             ],
//           ),

//           StatefulShellBranch(
//             navigatorKey: _rootNavigateprofile,
//             routes: [
//               GoRoute(
//                 path: '/profile',
//                 name: 'Profile',
//                 builder: (context, state) {
//                   return Profile(
//                     key: state.pageKey,
//                   );
//                 },
//                 routes: [
//                   GoRoute(
//                     path: 'editprofile',
//                     name: 'editprofile',
//                     builder: (context, state) {
//                       return ProfileEditScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'editlanguage',
//                     name: 'editlanguage',
//                     builder: (context, state) {
//                       return Language(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'payment',
//                     name: 'payment',
//                     builder: (context, state) {
//                       return Payment(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                   GoRoute(
//                     path: 'notification',
//                     name: 'notification',
//                     builder: (context, state) {
//                       return NotificationScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ],
//           ),
       
//         ],
     
//       )
//     ],
//   );
// }
