import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget{
  final String imageUrl;
  const DetailsImage({super.key,required this.imageUrl});
  
  @override
  Widget build(Object context) {
    
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
  }
}