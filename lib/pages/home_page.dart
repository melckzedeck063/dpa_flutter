
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo/util/category_card.dart';
import 'package:todo/util/doctor_card.dart';

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
              const Padding(padding: EdgeInsets.fromLTRB(1, 4, 1, 1),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 8,),
                  Text("Cotton Zedeck", style: TextStyle(fontSize: 20, color: Colors.teal, fontWeight: FontWeight.bold ),)
                ],
            
              ),),
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

           const SizedBox(height: 20),

           Padding(padding: const EdgeInsets.symmetric(horizontal :25) ,
            child: Container(

            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.pink[100],
              borderRadius: BorderRadius.circular(12)
              ),
        
            child:  Row(
              children: [

                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('lib/icons/health.png', height: 60, width: 60,)
                ),
                const SizedBox(width: 25),
                Expanded(
                  child : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('How do tou feel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    ),

                    const SizedBox(height: 12),
                    const Text('Fill out your medical card right now',
                      style:TextStyle(
                        fontSize: 14,
                        
                      ) ,
                    ),

                    const SizedBox(height: 12),

                 Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[300],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Center(
                    child: Text('Get  Started',
                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                  ),
                )
                  ],
                )
                  )
              ],),
           ) ,
           ),
           
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.deepPurple[100],
                borderRadius:  BorderRadius.circular(12)
              ),
            child:  const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'How can we help you?',
              border: InputBorder.none,
            ),
          )
          ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                   CategoryCard(
                    categoryName: 'Dentist',
                    iconImagePath: 'lib/icons/tooth.png',
                   ),
                   CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagePath: 'lib/icons/surgeon1.png',
                   ),
                   CategoryCard(
                    categoryName: 'Pharmacist',
                    iconImagePath: 'lib/icons/medicine.png',
                   )
                ],
              ),
            )
,
              ),

               const SizedBox(height: 20),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Doctor List',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(
                      'See All',
                     style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold
                     ),
                    )
                  ],
                ),
                ),


                const SizedBox(height: 20),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      DoctorCard(
                        doctorImagePath: 'lib/images/doctor5.jpg',
                        doctorName: 'Joshua Youzee',
                        doctorProffesional: 'Therapist 7 y.e',
                        rating: '4.5',
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/doctor6.jpg',
                        doctorName: 'Josephine Ericsen',
                        doctorProffesional: 'Surgeon 3.5 y.e',
                        rating: '4.5',
                      ),
                      DoctorCard(
                        doctorImagePath: 'lib/images/doctor4.jpg',
                        doctorName: 'Martin Mesut',
                        doctorProffesional: 'Dentistry 5 y.e',
                        rating: '4.5',
                      ),
                      
                    ],
                  ),
                  )
                  )

        ],
      ) ,

      )
    );
  }
}