import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_statemanagment/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_bloc_statemanagment/data/api_services/characters_api_services.dart';
import 'package:flutter_bloc_statemanagment/presentation/screens/character_details.dart';
import 'package:flutter_bloc_statemanagment/presentation/screens/characters_screen.dart';

import 'constants/strings.dart';
import 'data/repository/characters_repository.dart';

class AppRouter {

  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepository = CharactersRepository(CharactersApiServices());
    charactersCubit = CharactersCubit(charactersRepository);
  }


  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => charactersCubit,
              child: const CharactersScreen(),
            ));

      case characterDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharacterDetailsScreen());
    }
    return null;
  }
}