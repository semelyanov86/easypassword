import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pass_generator/main.dart';

class RandomizerPage extends ConsumerWidget {
  RandomizerPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final randomizer = ref(randomizerProvider);
    print(randomizer.symbols);
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Randomizer'),
      ),
      body: Center(
        child: Text(
          randomizer.generatedPassword ?? 'Generate Password',
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Generate Password'),
        onPressed: () =>
            {context.read(randomizerProvider).generateRandomPassword()},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
