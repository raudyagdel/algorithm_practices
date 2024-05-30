// https://docs.flutter.dev/cookbook/networking/fetch-data
import 'dart:convert';
import 'dart:io';

class ApiEndPoints {
  static const String pokemon = 'https://pokeapi.co/api/v2/pokemon';
  static const String evolutionChain = 'https://pokeapi.co/api/v2/evolution-chain';
}

final httpClient = HttpClient();

class Pokemon {
  final String name;
  final int id;
  final int weight;
  final int height;
  //final List<PokemonType> types;

  Pokemon({
    required this.name,
    required this.id,
    required this.weight,
    required this.height,
    //required this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    //final types = List<PokemonType>.from(json['types'].map((type) => Pokemon.fromJson(type)));
    return Pokemon(
      name: json['name'],
      id: json['id'],
      weight: json['weight'],
      height: json['height'],
      // types: types,
    );
  }

  @override
  String toString() {
    return 'Name: $name\n'
        'Id: $id\n'
        'Weight: $weight\n'
        'Height: $height';
    //'Types: ${types.map((type) => type.name).join(", ")}\n';
  }
}

class PokemonType {
  final String name;

  PokemonType({required this.name});

  factory PokemonType.fromJson(Map<String, dynamic> json) {
    return PokemonType(
      name: json['type']['name'],
    );
  }
}

Future<Pokemon> fetchPokemon(String id) async {
  final request = await httpClient.getUrl(Uri.parse('${ApiEndPoints.pokemon}/$id'));
  final response = await request.close();
  if (response.statusCode == HttpStatus.ok) {
    final body = await response.transform(utf8.decoder).join();
    print(body);
    return Pokemon.fromJson(jsonDecode(body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load album');
  }
}

Future<void> main() async {
  String id = '123';
  final pokemon = await fetchPokemon(id);
  print(pokemon);
}
