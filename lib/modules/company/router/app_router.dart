 

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class AppNavigation {
//   AppNavigation._();

//   static String initR = '/loggin';

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
//       GoRoute(
//         path: '/loggin',
//         name: 'loggin',
//         builder: (context, state) {
//           return LogginScreen(
//             key: state.pageKey,
//           );
//         },
//         routes: [
//           GoRoute(
//             path: 'signup',
//             name: 'signup',
//             builder: (context, state) {
//               return SignupScreen(
//                 key: state.pageKey,
//               );
//             },
//           ),
//           StatefulShellRoute.indexedStack(
//             builder: (context, state, navigationShell) {
//               return BottomNav(
//                 navigationShell: navigationShell,
//               );
//             },
//             branches: <StatefulShellBranch>[
//               StatefulShellBranch(
//                 navigatorKey: _rootNavigateHome,
//                 routes: [
//                   GoRoute(
//                     path: 'home',
//                     name: 'home',
//                     builder: (context, state) {
//                       return Homepage(
//                         key: state.pageKey,
//                       );
//                     },
//                     routes: [
                       
//                       GoRoute(
//                         path: 'pending',
//                         name: 'pending',
//                         builder: (context, state) {
//                           return PendingScreen(
//                             key: state.pageKey,
//                           );
//                         },
//                       ),
//                       GoRoute(
//                         path: 'completed',
//                         name: 'completed',
//                         builder: (context, state) {
//                           return Completed(
//                             key: state.pageKey,
//                           );
//                         },
//                       ),
//                       GoRoute(
//                         path: 'canceled',
//                         name: 'canceled',
//                         builder: (context, state) {
//                           return Canceled(
//                             key: state.pageKey,
//                           );
//                         },
//                       ),
//                       GoRoute(
//                         path: 'notification',
//                         name: 'notification',
//                         builder: (context, state) {
//                           return NotificationHome(
//                             key: state.pageKey,
//                           );
//                         },
//                       ),
//                       GoRoute(
//                         path: 'profile',
//                         name: 'profile',
//                         builder: (context, state) {
//                           return ProfileView(
//                             key: state.pageKey,
//                           );
//                         },
//                       ),
//                     ],
//                   ),
//                 ],
//               ),

//               //

//               StatefulShellBranch(
//                 navigatorKey: _rootNavigateorder,
//                 routes: [
//                   GoRoute(
//                       path: 'order',
//                       name: 'Order',
//                       builder: (context, state) {
//                         return Orderbottom(
//                           key: state.pageKey,
//                         );
//                       },
//                       routes: []),
//                 ],
//               ),

//               // bottom
//               StatefulShellBranch(
//                 navigatorKey: _rootNavigatetrack,
//                 routes: [
//                   GoRoute(
//                     path: 'Track',
//                     name: 'Track',
//                     builder: (context, state) {
//                       return NotificationScreen(
//                         key: state.pageKey,
//                       );
//                     },
//                   ),
//                 ],
//               ),

//               StatefulShellBranch(
//                 navigatorKey: _rootNavigateprofile,
//                 routes: [
//                   GoRoute(
//                     path: 'deliveryboys',
//                     name: 'deliveryboys',
//                     builder: (context, state) {
//                       return Profile(
//                         key: state.pageKey,
//                       );
//                     },
//                     routes: [],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     ],
//   );
// }
