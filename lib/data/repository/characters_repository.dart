import 'package:flutter_bloc_statemanagment/data/api_services/characters_api_services.dart';
import 'package:flutter_bloc_statemanagment/data/models/characters.dart';

class CharactersRepository{
final CharactersApiServices charactersApiServices;

CharactersRepository(this.charactersApiServices);

Future<List<dynamic>> getAllCharacters() async {
  final characters = await charactersApiServices.getAllCharacters();
  return characters.map((character) => Character.fromJson(character)).toList();
}
}