import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverapp/presentation/providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    final randomName = ref.watch(randomNameProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Text(randomName, style: titleStyle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onRefresh(ref),
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }

  void _onRefresh(WidgetRef ref) {
    // ref.read(randomNameProvider.notifier).state = RandomGenerator.generateRandomName();
    ref.invalidate(randomNameProvider); // Create a new instance of the original provider.
  }
}
