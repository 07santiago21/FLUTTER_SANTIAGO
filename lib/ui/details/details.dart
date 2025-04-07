import 'package:flutter/material.dart';
import 'package:flutter_santiago/domain/model/animal.dart';
import 'package:flutter_santiago/ui/details/widgets/details_button_adopt.dart';
import 'package:flutter_santiago/ui/details/widgets/details_description.dart';
import 'package:flutter_santiago/ui/details/widgets/details_image.dart';
import 'package:flutter_santiago/ui/details/widgets/details_info.dart';
import 'package:flutter_santiago/ui/details/widgets/details_name.dart';
import 'package:flutter_santiago/ui/widgets/header.dart';

class Details extends StatelessWidget {
  final Animal animal;
  const Details({super.key,required this.animal});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),

            DetailsName(name: animal.name),

            DetailsImage(imageUrl: animal.imageUrl),

            //const SizedBox(height: 12),

            const SizedBox(height: 36),

            DetailsInfo(age: animal.age, genere: animal.gender, location:animal.location),

            DetailsDescription(description:animal.description),

            const Spacer(), // el espacio restante lo rellena

            DetailsButtonAdopt()
            
          ],
        ),
      ),
    );
  }
}
