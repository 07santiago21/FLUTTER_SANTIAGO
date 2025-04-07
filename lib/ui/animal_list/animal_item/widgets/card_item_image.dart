import 'package:flutter/material.dart';
class CardItemImage extends StatelessWidget {
  final String image;

  const CardItemImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.grey[300],
              child: const Center(
                child: Icon(Icons.image_not_supported, size: 40),
              ),
            );
          },
        ),
      ),
    );
  }
}
