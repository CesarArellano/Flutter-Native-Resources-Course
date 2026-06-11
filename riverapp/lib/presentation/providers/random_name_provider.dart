import 'package:flutter_riverpod/legacy.dart';
import 'package:riverapp/config/config.dart';

final randomNameProvider = StateProvider<String>((ref) {
  return RandomGenerator.generateRandomName();
});