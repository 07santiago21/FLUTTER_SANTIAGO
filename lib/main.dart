import 'package:flutter/material.dart';
import 'package:flutter_santiago/data/service/animal_service.dart';
import 'package:flutter_santiago/ui/animal_list/animal_list.dart';
import 'package:flutter_santiago/ui/details/details.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'huachitoss',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimalList()
    );
  }
}

