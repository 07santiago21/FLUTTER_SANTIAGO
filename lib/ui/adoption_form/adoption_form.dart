import 'package:flutter/material.dart';
import 'package:flutter_santiago/ui/animal_list/animal_list.dart';
import 'package:flutter_santiago/ui/widgets/header.dart';

class AdoptionForm extends StatefulWidget {
  const AdoptionForm({super.key});

  @override
  State<AdoptionForm> createState() => _AdoptionFormState();
}

class _AdoptionFormState extends State<AdoptionForm> {
  String _name = '';
  String _contact = '';
  String _location = '';
  String _reason = '';

  void _submitForm() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Mensaje enviado'),
        content: Text(
          'Nombre: $_name\n'
          'Contacto: $_contact\n'
          'Ubicación: $_location\n'
          'Razón: $_reason',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnimalList()),
    ),
            child: const Text('Listo'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Formulario de Adopciónnnn',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: TextField(
                          onChanged: (value) => setState(() => _name = value),
                          decoration: const InputDecoration(
                            labelText: 'Nombre',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: TextField(
                          onChanged: (value) =>
                              setState(() => _contact = value),
                          decoration: const InputDecoration(
                            labelText: 'Contacto (teléfono o email)',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: TextField(
                          onChanged: (value) =>
                              setState(() => _location = value),
                          decoration: const InputDecoration(
                            labelText: 'Ubicación (comuna, región)',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: TextField(
                          onChanged: (value) => setState(() => _reason = value),
                          decoration: const InputDecoration(
                            labelText: '¿Por qué deseas adoptar?',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: _submitForm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Enviar'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
