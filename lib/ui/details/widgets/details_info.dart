// Edad, género y ubicación

import 'package:flutter/material.dart';

class DetailsInfo extends StatelessWidget {
  final String age;
  final String genere;
  final String location;

  const DetailsInfo(
      {super.key,
      required this.age,
      required this.genere,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(age),
          Text(genere),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Icons.location_on, size: 18),
              ),
              Text(location),
            ],
          ),
        ],
      ),

      

      
    );

    

    
  }
}
