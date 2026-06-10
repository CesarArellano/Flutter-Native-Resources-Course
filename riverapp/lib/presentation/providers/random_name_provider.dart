import 'package:flutter_riverpod/legacy.dart';

final randomNameProvider = StateProvider<String>((ref) {
  return 'John Doe';
});