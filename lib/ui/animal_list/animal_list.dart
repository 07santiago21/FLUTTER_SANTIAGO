import 'package:flutter/material.dart';
import 'package:flutter_santiago/data/service/animal_service.dart';
import 'package:flutter_santiago/domain/model/animal.dart';
import 'package:flutter_santiago/ui/animal_list/animal_item/anmial_item.dart';

class AnimalList extends StatefulWidget {
  const AnimalList({super.key});

  @override
  State<AnimalList> createState() => _AnimalListState();
}

class _AnimalListState extends State<AnimalList> {
  final AnimalService service = AnimalService();
  List<Animal> animals = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadAnimals();
  }

  Future<void> _loadAnimals() async {
    final data = await service.fetchAnimalList();
    setState(() {
      animals = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Animales'),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: animals.length,
              itemBuilder: (context, index) {
                return AnimalItem(animal: animals[index]);
              },
            ),
    );
  }
}
