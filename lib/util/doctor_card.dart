import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProffesional;

  const DoctorCard(
      {super.key, 
      required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProffesional,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: const EdgeInsets.all(17),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagePath,
                height: 100,
                // width: 100,
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.yellow[700]),
                const Text('4.9', style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             Text(
              doctorName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(doctorProffesional)
          ],
        ),
      ),
    );
  }
}
