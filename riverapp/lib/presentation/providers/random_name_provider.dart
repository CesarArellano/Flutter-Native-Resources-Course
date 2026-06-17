import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/config/config.dart';

class RandomNameNotifier extends Notifier<String> {
  @override
  String build() => RandomGenerator.generateRandomName();

  void regenerate(String newValue) => state = newValue;
}

final randomNameProvider = NotifierProvider.autoDispose<RandomNameNotifier, String>(RandomNameNotifier.new);