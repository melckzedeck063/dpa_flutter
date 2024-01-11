// HomeScreen.dart

import 'package:flutter/material.dart';
// import './assets/image1.jpg';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('My Flutter App', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 9, 51, 85),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, Flutter!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const Text(
              'This is my Flutter app',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
              'assets/images/image1.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            ),
            SizedBox(height: 15),
           
          ],
        ),
      ),
      backgroundColor: Colors.teal,
    );
  }

  
}
