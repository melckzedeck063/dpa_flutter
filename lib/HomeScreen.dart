import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("This is a home screen", style: TextStyle(
          color: Colors.amber
        ), )],
      )),
    );
  }
}
