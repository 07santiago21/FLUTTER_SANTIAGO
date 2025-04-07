class Animal {
  final int id;
  final String name;
  final String imageUrl;
  final String gender;
  final String age;
  final String location;
  final String description;

  Animal(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.gender,
      required this.age,
      required this.location,
      required this.description});

  factory Animal.fromJson(Map<String, dynamic> jsonMap) {
    return Animal(
        id: jsonMap["id"],
        name: jsonMap["nombre"],
        imageUrl: "https://huachitos.cl/storage/animal-images/cachorro-img-20250321-wa0023-1742696965.jpg",//jsonMap["imagen"],
        gender: jsonMap["genero"],
        age: jsonMap["edad"],
        location: jsonMap["region"],
        description: jsonMap["desc_adicional"]
        );
  }
}
