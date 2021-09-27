import 'package:flutter/material.dart';
import 'package:random_password_generator/random_password_generator.dart';

class RandomizerPage extends StatefulWidget {
  final int length;

  final bool uppercase, lowercase, symbols, numbers;

  const RandomizerPage({
    Key? key,
    required this.length,
    required this.uppercase,
    required this.lowercase,
    required this.symbols,
    required this.numbers,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RandomizerPageState();
  }
}

class RandomizerPageState extends State<RandomizerPage> {
  String? _generatedPass;

  final password = RandomPasswordGenerator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Randomizer'),
      ),
      body: Center(
        child: Text(
          _generatedPass ?? 'Generate a password',
          style: TextStyle(fontSize: 42),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Generate Password'),
        onPressed: () => {
          setState(() => {
                _generatedPass = password.randomPassword(
                    passwordLength: widget.length.toDouble(),
                    letters: widget.lowercase,
                    uppercase: widget.uppercase,
                    numbers: widget.numbers,
                    specialChar: widget.symbols)
              })
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
