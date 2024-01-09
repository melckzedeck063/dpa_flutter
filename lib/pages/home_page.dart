
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],

      body:  SafeArea(
        child:  Column(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment:  MainAxisAlignment.spaceBetween,
            children: [
              const Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("Cotton Zedeck", style: TextStyle(fontSize: 20, color: Colors.teal, fontWeight: FontWeight.bold ),)
                ],
            
              ),
              // Icon(Icons.person),
              Container(
                padding: const EdgeInsets.all(12),
                 decoration: BoxDecoration(
                   color: Colors.deepPurple[200],
                   borderRadius: BorderRadius.circular(12),
           ),
         child: const Icon(Icons.person),
)

            ],

          ),
            ),

        ],
      ) ,

      )
    );
  }
}