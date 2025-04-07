import 'package:flutter/material.dart';

class CardItemImage extends StatelessWidget {
  final String image;

  CardItemImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      flex: 3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
