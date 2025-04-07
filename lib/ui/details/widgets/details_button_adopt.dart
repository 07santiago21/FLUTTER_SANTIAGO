import 'package:flutter/material.dart';
import 'package:flutter_santiago/ui/adoption_form/adoption_form.dart';

class DetailsButtonAdopt extends StatelessWidget {
  const DetailsButtonAdopt({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.all(26),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdoptionForm()),
              );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Adoptar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            );
  }
}