import 'dart:convert';
import 'package:flutter_santiago/domain/model/animal.dart';
import 'package:http/http.dart' as http;


class AnimalService {
  Future<List<Animal>> fetchAnimalList() async {
    final url = Uri.parse(
      'https://huachitos.cl/api/animales/tipo/Perro'
    );

    final response = await http.get(url);

    try {
      if (response.statusCode == 200) {
        
        final List<dynamic> listOfJson = jsonDecode(response.body)['data'] as List;
        
        final AnimalList = listOfJson.map((json) => Animal.fromJson(json)).toList();
        return AnimalList;
        
      } else {
        throw Exception('No existen recetas para la categor');
        // TODO capturar los errores no controlado
      }
    } catch (error) {
      throw Exception('Ocurrió un error procesando los datos del API');
    }
  }

}