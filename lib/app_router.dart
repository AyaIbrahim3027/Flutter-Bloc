import 'package:flutter/material.dart';
import 'package:flutter_bloc_statemanagment/presentation/screens/character_details.dart';
import 'package:flutter_bloc_statemanagment/presentation/screens/characters_screen.dart';

import 'constants/strings.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}