import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverapp/config/helpers/pokemon_service.dart';

final pokemonIdProvider = StateProvider.autoDispose<int>((ref) => 1);

final pokemonProvider = FutureProvider.autoDispose.family<String, int>((ref, id) async {
  final name = await PokemonService.getPokemonName(id);
  return name;
});