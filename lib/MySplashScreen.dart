// // SplashScreen.dart
// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
// import 'LandingScreen.dart';

// class MySplashScreen extends StatelessWidget {
//   const MySplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SplashScreen(
//       seconds: 3,
//       navigateAfterSeconds: const LandingScreen(),
//       title: const Text(
//         'My Flutter App',
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20.0,
//           color: Colors.white,
//         ),
//       ),
//       image: Image.asset('assets/app_logo.png'), // Replace with your app logo asset path
//       backgroundColor: Colors.teal,
//       photoSize: 100.0,
//       loaderColor: Colors.white,
//       loadingText: Text(
//         'Loading...',
//         style: TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
