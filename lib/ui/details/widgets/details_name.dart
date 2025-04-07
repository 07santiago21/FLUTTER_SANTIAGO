import 'package:flutter/material.dart';

class DetailsName extends StatelessWidget {
  final String name;
  const DetailsName({super.key, required this.name});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:EdgeInsets.only(bottom: 25.0),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
            );
  }
}