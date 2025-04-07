import 'package:flutter/material.dart';
import 'package:flutter_santiago/domain/model/animal.dart';
import 'package:flutter_santiago/ui/animal_list/animal_item/widgets/card_item_image.dart';
import 'package:flutter_santiago/ui/animal_list/animal_item/widgets/card_item_info_rows.dart';
import 'package:flutter_santiago/ui/details/details.dart';

class AnimalItem extends StatelessWidget {
  final Animal animal;

  AnimalItem({super.key,required this.animal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Details(animal:animal)));
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CardItemImage(image:animal.imageUrl), //pasar como parametro la img

              const SizedBox(width: 18), // Espacio entre columnas

              CardItemInfoRows(
                  name: animal.name,
                  gender: animal.gender,
                  age: animal.age,
                  location: animal.location),
            ],
          ),
        ),
      ),
    );
  }
}
