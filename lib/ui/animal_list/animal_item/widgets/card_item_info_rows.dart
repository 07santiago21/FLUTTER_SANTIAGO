import 'package:flutter/material.dart';

class CardItemInfoRows extends StatelessWidget {
  final String name;
  final String gender;
  final String age;
  final String location;

  const CardItemInfoRows({
    super.key,
    required this.name,
    required this.gender,
    required this.age,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5, // con esto Controlo el tamaño en la fila principal
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          _buildInfoRow(Icons.pets, "canino"),
          _buildInfoRow(Icons.badge, gender),
          _buildInfoRow(Icons.cake, age),
          _buildInfoRow(Icons.location_on, location),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16),
        const SizedBox(width: 4),
        Text(text),
      ],
    );
  }
}
