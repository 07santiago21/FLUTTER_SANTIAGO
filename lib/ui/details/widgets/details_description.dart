import 'package:flutter/widgets.dart';

class DetailsDescription extends StatelessWidget {
  final String description;
  const DetailsDescription({super.key,required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Descripción',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),

        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              textAlign: TextAlign.justify,
              description,
              style: TextStyle(fontSize: 14),
            ),
          ),
        ),

        
      ],
    );
  }
}
