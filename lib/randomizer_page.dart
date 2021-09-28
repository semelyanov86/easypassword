import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:random_password_generator/random_password_generator.dart';

class RandomizerPage extends HookWidget {
  final password = RandomPasswordGenerator();

  final int length;

  final bool uppercase, lowercase, symbols, numbers;

  RandomizerPage({
    Key? key,
    required this.length,
    required this.uppercase,
    required this.lowercase,
    required this.symbols,
    required this.numbers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final generatedPass = useState<String?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text('Password Randomizer'),
      ),
      body: Center(
        child: Text(
          generatedPass.value ?? 'Generate a password',
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Generate Password'),
        onPressed: () => {
          generatedPass.value = password.randomPassword(
              passwordLength: length.toDouble(),
              letters: lowercase,
              uppercase: uppercase,
              numbers: numbers,
              specialChar: symbols)
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
